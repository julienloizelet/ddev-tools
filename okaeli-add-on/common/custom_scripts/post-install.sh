#!/bin/bash

#ddev-generated
# ddev manages this file and may delete or overwrite it unless the above line is removed.
# This file comes from "ddev get julienloizelet/ddev-tools"

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

