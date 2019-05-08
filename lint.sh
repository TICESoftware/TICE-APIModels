#!/usr/bin/env bash

RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`

if [ -z ${1} ]; then
  echo "${RED}Version not specified. Use make lint version=x.x.x${RESET}"
  exit 1
fi

STATUS=0

if [[ -n $(git status --porcelain) ]]; then
  echo "${RED}Git directory not clean"
  STATUS=1
fi

if [ $(git describe --tags) != ${1} ]; then
  echo "${RED}HEAD is not correctly tagged"
  STATUS=1
fi

LINT=$(pod spec lint --quick --allow-warnings)
if [ $? -ne 0 ]; then
  echo "${RED}Linting failed:"
  echo "${RESET}${LINT}"
fi

if ! $(echo ${LINT} | grep -qF "(${1})")
then
  STATUS=1
fi

echo ""
if [ $STATUS == 0 ]; then
  echo "${GREEN}All good!"
else
  echo "${RED}There were errors"
fi

tput sgr0

exit $STATUS
