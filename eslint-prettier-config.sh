#!/bin/bash

# ----------------------
# Color Variables
# ----------------------
RED="\033[0;31m"
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
LCYAN='\033[1;36m'
NC='\033[0m' # No Color

# ----------------------
# Perform Configuration
# ----------------------
echo
echo -e "${GREEN}Configuring your development environment... ${NC}"

echo
echo -e "${LCYAN}ESLint Installation... ${NC}"
echo
npm install --save-dev eslint

echo
echo -e "${LCYAN}Initialize ESlint... ${NC}"
echo
npx eslint --init

echo
echo -e "${LCYAN}Making ESlint and Prettier play nice with each other... ${NC}"
echo
npm install --save-dev eslint-config-prettier eslint-plugin-prettier

echo "${LCYAN}Remember to include the below specs in your .eslinrc file:${NC}"
echo
echo ${RED}'
"extends": [ "prettier"],
"plugins": [ "prettier"],
"rules": {
"prettier/prettier": [
    "error",
    {
    "singleQuote": true,
    "printWidth": 100
    }
],
"no-console": "off"
}'
${NC}

echo
echo -e "${GREEN}Finished setting up!${NC}"
echo

#
# Add vscode config and/or prettier config to format on save
#
