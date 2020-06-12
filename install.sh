#!/bin/bash
# {{{ setTheStage

setTheStage() {
  echo "" && echo "Setting the stage!"
  cd ~/git
  rm -rf havasu
}

# -------------------------------------------------------------------------- }}}
# {{{ cloneMyRepos

repos=(havasu)
cloneMyRepos() {
  echo "" && echo "Cloning Havasu repository."
  arr=("$@")
  for r in "${arr[@]}"
  do
    src=https://github.com/Traap/$r.git
    dst=~/git/$r
    git clone --depth 1 $src $dst
  done
}

# -------------------------------------------------------------------------- }}}
# {{{ installHavasu 

installHavasu() {
  echo "" && echo "Installing Havasu."
  cp ~/git/havasu/beamerthemeHavasu.sty \
     ~/.miktex/texmfs/install/tex/latex/beamer/

  kpsewhich beamerthemeHavasu.sty

  sudo initexmf --admin --update-fndb
}

# -------------------------------------------------------------------------- }}}
# {{{ main

main() {
  setTheStage
  cloneMyRepos ${repos[@]}
  installHavasu 
}

# -------------------------------------------------------------------------- }}}
# The stage is set ... start the show!!!
main "$@"
