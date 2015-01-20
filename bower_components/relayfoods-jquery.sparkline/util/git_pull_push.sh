#! /bin/bash

pushd $(dirname $0)                                                       2> /dev/null  > /dev/null
cd ..

getopts ":Rcfqplsh" opt
#echo opt+arg = "$opt$OPTARG"
case "$opt$OPTARG" in
"?" )
  echo "--- pull/push every git repo in this directory tree ---"
  #echo full - args: $@
  for f in $( find . -name '.git' ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    f=$( echo $f | sed -e 's#/\?\.git$##' )
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    git fetch --tags                                                      2>&1
    git pull --all                                                        2>&1
    git push --all                                                        2>&1
    git push --tags                                                       2>&1
    popd                                                                  2> /dev/null  > /dev/null
  done
  ;;

f )
  echo "--- pull/push the git repo and its submodules ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    git fetch --tags                                                      2>&1
    git pull --all                                                        2>&1
    git push --all                                                        2>&1
    git push --tags                                                       2>&1
    popd                                                                  2> /dev/null  > /dev/null
  done
  $@
  git fetch --tags                                                        2>&1
  git pull --all                                                          2>&1
  git push --all                                                          2>&1
  git push --tags                                                         2>&1
  ;;

q )
  echo "--- pull/push the git submodules only ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    git fetch --tags                                                      2>&1
    git pull --all                                                        2>&1
    git push --all                                                        2>&1
    git push --tags                                                       2>&1
    popd                                                                  2> /dev/null  > /dev/null
  done
  ;;

p )
  echo "--- pull the git repo and its submodules ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    git fetch --tags                                                      2>&1
    git pull --all                                                        2>&1
    popd                                                                  2> /dev/null  > /dev/null
  done
  $@
  git fetch --tags                                                        2>&1
  git pull --all                                                          2>&1
  ;;

R )
  echo "--- RESET the git repo and its submodules ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@

  # reset main project first to (possibly) restore the submodules to their intended commit position before we reset them
  git reset --hard                                                        2>&1
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    echo RESET-ting PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    git reset --hard                                                      2>&1
    popd                                                                  2> /dev/null  > /dev/null
  done
  $@
  git reset --hard                                                        2>&1
  ;;

l )
  echo "--- pull/push the git repo (and its submodules, where necessary) ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo $@
  $@
  git fetch --tags --recurse-submodules=on-demand                         2>&1
  git pull --all --recurse-submodules=on-demand                           2>&1
  # report which submodules need attention (they will be done automatically, but it doesn't hurt to report them, in case things go pearshaped)
  git push --all --recurse-submodules=check                               2>&1
  git push --all --recurse-submodules=on-demand                           2>&1
  ;;

c )
  echo "--- clean up the git submodules remote references etc. ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    # http://kparal.wordpress.com/2011/04/15/git-tip-of-the-day-pruning-stale-remote-tracking-branches/
    # http://stackoverflow.com/questions/13881609/git-refs-remotes-origin-master-does-not-point-to-a-valid-object
    git gc
    git fsck --full --unreachable --strict
    git reflog expire --expire=0 --all
    git update-ref
    git gc --aggressive --prune=2018-08-08
    git remote update --prune
    git remote prune origin
    popd                                                                  2> /dev/null  > /dev/null
  done
  $@
  git gc
  git fsck --full
  git reflog expire --expire=0 --all
  git update-ref
  git gc --aggressive
  git remote update --prune
  git remote prune origin
  ;;

s )
  echo "--- for all submodules: set upstream ref for each local branch and push the repo ---"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                               2> /dev/null  > /dev/null
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    git push -u origin --all
    popd                                                                  2> /dev/null  > /dev/null
  done
  ;;

* )
  cat <<EOT
$0 [-c] [-f] [-l] [-p] [-q] [-R] [-s] [args]

pull & push all git repositories in the current path.

-l       : 'lazy': let git (1.8+) take care of pushing all submodules' changes
           which are relevant: this is your One Stop Push Shop.
           (Also performs a 'pull --all' before pushing.)
-f       : only pull/push this git repository and the git submodules.
-q       : pull/push all the git submodules ONLY (not the main project).
-p       : only PULL this git repository and the git submodules.
-c       : cleanup git repositories: run this when you get
           error 'does not point to valid object'
-s       : setup/reset all upstream (remote:origin) references for each
           submodule and push the local repo. This one ensures a 'git push --all'
           will succeed for each local branch the next time you run that
           command directly or indirectly via, e.g. 'util/git_pull_push.sh -f'

-R       : HARD RESET this git repository and the git submodules. This is useful
           to sync the working directories after you ran the VM_push/pull script
           in your VM.

<no opt> : pull/push ANY git repository find in the current directory tree.

When further commandline [args] are specified, those are treated as a command
and executed for each directory containing a git repository. E.g.:

  $0 git commit -a

will execute a 'git commit -a' for every git repository.

EOT
  ;;
esac


popd                                                                      2> /dev/null  > /dev/null



