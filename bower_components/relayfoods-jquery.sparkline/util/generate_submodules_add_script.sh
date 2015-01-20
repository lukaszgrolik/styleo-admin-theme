#! /bin/bash
#
# generate a shell script which will add all the git submodules to the current repository.
# Such a script is required (or rather commands contained therein) when the submodules
# registration is eff-ed up on your box and the usual way of `git submodule update --init`
# doesn't resolve your troubles.
#
# http://stackoverflow.com/questions/3336995/git-will-not-init-sync-update-new-submodules

pushd $(dirname $0)                                                                                     2> /dev/null  > /dev/null

# go to root of project
cd ..

cat .gitmodules | gawk -f util/generate_submodules_add_script.awk > util/git_add_submodule_references.sh

popd                                                                                                    2> /dev/null  > /dev/null
