#!/bin/bash

#ddev-generated
# Remove the line above if you don't want this file to be overwritten
# when you run ddev get julienloizelet/ddev-tools

# Check DDEV version
CURRENT_DIR=$(dirname "$0");
source "${CURRENT_DIR}/bash/helpers/colors.sh";

if [[ $DDEV_PROJECT_TYPE == magento2 ]]
then
  echo -en "${txtgrn}${check_mark} Magento 2 project detected${txtrst} \n"
  COPY1="cp -r okaeli-add-on/magento2/commands/* commands "
  $COPY1 && echo -en "${arrow_right} ${COPY1} \n" &&
  echo -en "${txtgrn}${thumb_up} Files copied (overwritten if already existing)${txtrst}"
fi

if [[ $DDEV_PROJECT_TYPE == php ]]
then
  echo -en "${txtgrn}${check_mark} PHP project detected${txtrst} \n"
  COPY1="cp -r okaeli-add-on/native/commands/* commands"
  $COPY1 && echo -en "${arrow_right} ${COPY1} \n" &&
  echo -en "${txtgrn}${thumb_up} Files copied (overwritten if already existing)${txtrst}"
fi

