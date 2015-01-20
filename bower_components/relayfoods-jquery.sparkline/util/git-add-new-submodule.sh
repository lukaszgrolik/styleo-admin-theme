#! /bin/bash
#

pushd $(dirname $0)                                                                                     2> /dev/null  > /dev/null
cd ..

if test -z "$2" ; then
    cat <<EOT
$0 <repo-name> <destination-directory> <original-author> [<forks>]

Add a NEW submodule to the set of submodules.

Also adds the <username>-original remote reference to this submodule.

When any fork names (github users) are listed, these are added as
additional repository remotes.


Example usage:
   util/git_add_submodule.sh jasmine-ui lib/jasmine-ui tigbro

EOT
    exit 0;
fi

repo=$1
dstdir=$2
author=$3

if test -d $dstdir ; then
    echo "Destination directory [$dstdir] already exists. Cannot clone a submodule into an existing directory!";
    echo "(Press ENTER to continue...)";
    read;
fi

git submodule add git@github.com:GerHobbelt/$repo.git $dstdir

cd $dstdir

if test -n "$author" ; then
    git remote add ${author}-original git://github.com/$author/$repo.git

    # add additional forks as remotes:
    shift 3

    while test -n "$1" ; do
        author=$1
        git remote add ${author} git://github.com/$author/$repo.git
        shift
    done
fi

git pull --all
git fetch --tags


popd                                                                                                    2> /dev/null  > /dev/null
