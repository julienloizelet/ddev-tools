#!/bin/bash

#ddev-generated
# Remove the line above if you don't want this file to be overwritten
# when you run ddev get julienloizelet/ddev-tools

# Check DDEV version
CURRENT_DIR=$(dirname "$0");
source "${CURRENT_DIR}/bash/helpers/colors.sh";

if [[ $DDEV_PROJECT_TYPE == magento2 ]]
then
  echo -en "${txtgrn}${check_mark} Magento 2 project detected => Will now copy some specific files${txtrst} \n"
  cp -r okaeli-add-on/magento2/commands/* commands &&
  echo -en "${txtgrn}${check_mark} Files copied${txtrst} \n"
fi

if [[ $DDEV_PROJECT_TYPE == php ]]
then
  echo -en "${txtgrn}${check_mark} PHP project detected => Will now copy some specific files${txtrst} \n"
  cp -r okaeli-add-on/native/commands/* commands
fi

