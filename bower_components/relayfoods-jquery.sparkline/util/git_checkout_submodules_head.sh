#! /bin/bash
#
# checkout all submodules to their desired 'HEAD' bleeding edge revision: MASTER for most.
#

pushd $(dirname $0)                                                                                     2> /dev/null  > /dev/null

cd ..



getopts ":Fhl" opt
#echo opt+arg = "$opt$OPTARG"
case "$opt$OPTARG" in
"F" )
  echo "--- checkout to branch or master with RESET + FORCE ---"
  mode="F"
  for (( i=OPTIND; i > 1; i-- )) do
    shift
  done
  #echo args: $@
  ;;

"h" )
  mode="?"
  cat <<EOT
$0 [-F] [-l]

checkout git submodules to the preconfigured branch (master / other).

-F       : apply 'git reset --hard' and 'git checkout --force' to each submodule

-l       : list the submodules which will be checked out to a non-'master' branch

EOT
  exit
  ;;

"l" )
  mode="?"
  cat <<EOT

These submodules have been preconfigured to checkout to non-master branches:

EOT
  ;;

* )
  echo "--- checkout git submodules to master / branch ---"
  mode="R"
  ;;
esac




#git submodule foreach --recursive git checkout master
#
# instead, use the shell to loop through the submodules so we can give any checkout errors the birdy!
if test "$mode" != "?" ; then
    for f in $( git submodule foreach --recursive --quiet pwd ) ; do
        pushd $f                                                                                            2> /dev/null  > /dev/null
        case "$mode" in
F )
            echo "submodule: $f (master, FORCED)"
            git reset --hard
            git checkout master --force
            git reset --hard
      ;;

"?" )
            ;;

R )
            echo "submodule: $f (master)"
            git checkout master
            ;;
        esac
        popd                                                                                                2> /dev/null  > /dev/null
    done
fi

# args: lib localname remote
function checkout_branch {
    pushd $1                                                                                                2> /dev/null  > /dev/null
    case "$mode" in
F )
        echo "submodule: $1, branch: $2 (FORCED)"
        git branch --track $2 $3                                                                            2> /dev/null
        git reset --hard
        git checkout $2 $4 --force
        git reset --hard
  ;;

"?" )
        if test "$2" != "master"; then
            echo "submodule: $1"
            echo "                                         branch: $2"
        fi
        ;;

R )
        echo "submodule: $1, branch: $2"
        git branch --track $2 $3                                                                            2> /dev/null
        git checkout $2 $4
        ;;
    esac
    popd                                                                                                    2> /dev/null  > /dev/null
}

checkout_branch lib/backbone                        gh-pages origin/gh-pages                                                $@
checkout_branch lib/backbone-associations           gh-pages origin/gh-pages                                                $@
checkout_branch lib/backbone-fundamentals-book      gh-pages origin/gh-pages                                                $@
checkout_branch lib/Bootstrap-Form-Builder          gh-pages origin/gh-pages                                                $@
checkout_branch lib/crossfilter                     gh-pages origin/gh-pages                                                $@
checkout_branch lib/dropin-require                  gh-pages origin/gh-pages                                                $@
checkout_branch lib/jasmine/pages                   gh-pages origin/gh-pages                                                $@
checkout_branch lib/jquery-form-accordion           gh-pages origin/gh-pages                                                $@
checkout_branch lib/json3/vendor/spec               gh-pages origin/gh-pages                                                $@
checkout_branch lib/spin                            gh-pages origin/gh-pages                                                $@
checkout_branch lib/circle-menu                     gh-pages origin/gh-pages                                                $@
checkout_branch lib/pie-menu                        gh-pages origin/gh-pages                                                $@
checkout_branch lib/radial-responsive-menu          gh-pages origin/gh-pages                                                $@
checkout_branch lib/square-responsive-menu          gh-pages origin/gh-pages                                                $@
checkout_branch util/jsbeautifier                   gh-pages origin/gh-pages                                                $@
checkout_branch lib/one-color/slides/3rdparty/CSSS  gh-pages origin/gh-pages                                                $@


checkout_branch css/lib/Font-Awesome/_gh_pages      gh-pages origin/gh-pages                                                $@
checkout_branch css/lib/Font-Awesome                experimental origin/experimental                                        $@
checkout_branch lib/backbone-ui                     validation origin/validation                                            $@
checkout_branch lib/d3                              all_scales_have_subticks origin/all_scales_have_subticks                $@
#checkout_branch lib/d3                              master origin/master                                                    $@
checkout_branch lib/CKeditor.development            experimental origin/experimental                                        $@
checkout_branch lib/CKeditor.development            major origin/major                                                      $@
checkout_branch lib/elFinder                        2.1 origin/2.1                                                          $@
checkout_branch lib/elFinder                        2.x origin/2.x                                                          $@
checkout_branch lib/elFinder                        nao-2.1 origin/nao-2.1                                                  $@
checkout_branch lib/elFinder                        nao-2.x origin/nao-2.x                                                  $@
checkout_branch lib/elFinder                        extra-fixes origin/extra-fixes                                          $@
checkout_branch lib/iscroll                         v5 origin/v5                                                            $@
checkout_branch lib/highlight                       for-npm-install origin/for-npm-install                                  $@
checkout_branch lib/highlight                       master origin/master                                                    $@
checkout_branch lib/less                            release origin/release                                                  $@
checkout_branch lib/less                            master origin/master                                                    $@
checkout_branch lib/mousetrap                       wrapping-specific-elements origin/wrapping-specific-elements            $@
checkout_branch lib/Modernizr                       improvedAsyncTestSupport origin/improvedAsyncTestSupport                $@
checkout_branch util/docco/lib/highlight.js         for-npm-install origin/for-npm-install                                  $@
checkout_branch lib/jquery-dirtyforms/lib/facebox   cssified origin/cssified                                                $@
checkout_branch lib/jquery-facebox                  cssified origin/cssified                                                $@
checkout_branch lib/jquery-sparkline                takacsv-work origin/takacsv-work                                        $@
checkout_branch lib/spectrum                        no-color origin/no-color                                                $@
checkout_branch lib/slickgrid                       k0stya-rowspan origin/k0stya-rowspan                                    $@
checkout_branch lib/slickgrid                       frozenRowsAndColumns-work origin/frozenRowsAndColumns-work              $@
checkout_branch lib/SyntaxHighlighter               highlight-and-annotate-per-line origin/highlight-and-annotate-per-line  $@
checkout_branch lib/zoom                            for-revealJS origin/for-revealJS                                        $@
checkout_branch lib/reveal.js                       hakim-dev origin/hakim-dev                                              $@
checkout_branch php/lib/opauth-docs                 gh-pages origin/gh-pages                                                $@
checkout_branch php/lib/PHPExcel                    develop origin/develop                                                  $@
checkout_branch php/lib/phpmailer                   smtp-refactor origin/smtp-refactor                                      $@
checkout_branch util/javascriptlint                 working-rev origin/working-rev                                          $@

checkout_branch util/jison/gh-pages                 gh-pages origin/gh-pages                                                $@
# better make sure; had trouble a few times...
checkout_branch util/jison                          master origin/master                                                    $@


popd                                                                                                    2> /dev/null  > /dev/null

