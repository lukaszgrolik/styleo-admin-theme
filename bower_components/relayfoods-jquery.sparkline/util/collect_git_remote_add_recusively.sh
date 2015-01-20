#! /bin/bash
#
# recursively collect registered git remotes and
# write them to a shell script for later use on other
# machines (and keeping the info in the repository)
#

pushd $(dirname $0)                                                                                     2> /dev/null  > /dev/null

# go to root of project or 'git submodule foreach' won't run
cd ..

git submodule foreach --recursive git remote -v | gawk -f util/collect_git_remote_add_recusively.awk > util/register_git_remotes_recursive.sh

popd                                                                                                    2> /dev/null  > /dev/null
