#!/bin/bash

export PATH=~/npm-global/bin:$PATH
export NPM_CONFIG_PREFIX=~/.npm-packages
# move a copy of travis
mkdir travis
cp -rf ../generator-jhipster/travis/* travis/

HOME="${PWD}/home"
JHIPSTER_TRAVIS="${PWD}/travis"
JHIPSTER_NODE_CACHE=1
PROFILE=dev
RUN_APP=1
PROTRACTOR=0
JHIPSTER_INSTALL=$JHIPSTER_TRAVIS/install
JHIPSTER_SAMPLES=$JHIPSTER_TRAVIS/samples
JHIPSTER_SCRIPTS=$JHIPSTER_TRAVIS/scripts

#############################
#			    #
# define your test app here #
#			    #
#############################

JHIPSTER=$1

export HOME
export JHIPSTER_TRAVIS
export PROFILE
export RUN_APP
export PROTRACTOR
export JHIPSTER_INSTALL
export JHIPSTER_SAMPLES
export JHIPSTER_SCRIPTS
export JHIPSTER

echo "installing profile $PROFILE to $JHIPSTER_TRAVIS using home $HOME"
npm config get prefix

#exit 0
$JHIPSTER_SCRIPTS/01-generate-project.sh
$JHIPSTER_SCRIPTS/02-generate-entities.sh
$JHIPSTER_SCRIPTS/03-docker-compose.sh
$JHIPSTER_SCRIPTS/04-tests.sh
$JHIPSTER_SCRIPTS/05-run.sh
