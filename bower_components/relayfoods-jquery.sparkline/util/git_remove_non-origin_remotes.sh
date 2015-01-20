#! /bin/bash

#
# remove all remotes which are not origin or original related...
#
# (Run this script when you want to just run fast updates (pull/push)
#  of the main repositories and not bother with what others have
#  done in any way. Hence use this for fastest 'git_pull_push.sh -q'
#  in busy development mode...)
#
# NOTE:
#       this script also keeps remotes which have 'DEV' (in capitals!)
#       in their name. This is done to keep my local remotes intact
#       which have names such as 'Win7DEV' and 'UNIX_DEV' to cross-link
#       the git repositories on the different development machines.
#

pushd $(dirname $0)                                                                                     2> /dev/null  > /dev/null
cd ..

getopts ":h" opt
#echo opt+arg = "$opt$OPTARG"
case "$opt$OPTARG" in
"?" )
  echo --- remove all non-origin remotes from the submodules ---
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  for f in $( git submodule foreach --recursive --quiet pwd ) ; do
    pushd .                                                                                             2> /dev/null  > /dev/null
    echo processing PATH/SUBMODULE: $f
    cd $f
    #echo $@
    $@
    for g in $( git remote | grep -v -e "origin\|DEV|-svn" ) ; do
      git remote rm $g
    done
    popd                                                                                                2> /dev/null  > /dev/null
  done
  ;;

* )
  cat <<EOT
$0 [args]

remove all non-origin remotes from all git submodule repositories in the current path.

When further commandline [args] are specified, those are treated as a command
and executed for each directory containing a git submodule repository. E.g.:

  $0 git commit -a

will execute a 'git commit -a' for every git repository.

EOT
  ;;
esac


popd                                                                                                    2> /dev/null  > /dev/null



