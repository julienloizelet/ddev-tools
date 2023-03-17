#!/bin/bash

#ddev-generated
# ddev manages this file and may delete or overwrite it unless the above line is removed.
# This file comes from "ddev get julienloizelet/ddev-tools"

# Check DDEV version
CURRENT_DIR=$(dirname "$0");
source "${CURRENT_DIR}/bash/helpers/colors.sh";


function show_banner() {
    echo -e "${bldblu}=========================================================="
    echo -e "> DDEV environment started successfully. "
    echo -e "==========================================================${txtrst}"
}
show_banner
cd ~
CURRENT=$(printenv | grep -E "^DDEV_VERSION=v(.*)$" | sed 's/DDEV_VERSION=v//g')
EXPECTED=$(grep -E "EXPECTED=*" DDEV_EXPECTED_VERSION.txt | sed 's/EXPECTED=//g')

if [[ $CURRENT == $EXPECTED ]]
then
  echo -en "${txtgrn}${check_mark} DDEV version is as expected: $CURRENT ${txtrst} \n"
else
  echo -e "${bldylw}=========================="
  echo -e "> WARNING!!!"
  echo -e "==========================${txtrst}"
  echo -en "${bldylw}${cross_mark} DDEV version ($CURRENT) is not the expected one: $EXPECTED ${txtrst} \n"
fi
