#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
echo            "Yoshikage Kira"|lolcat
echo -e "${BLUE}Selamat Datang di tools recon${NC}"
echo -e "${BLUE}-------------------------------${NC}"
echo ""

read -p "Enter a website address: " website

echo ""
echo -e "${GREEN} running Whois tool...${NC}"
echo -e "${BLUE}---------------------${NC}"
whois $website

echo ""
echo -e "${GREEN} running Whatweb tool...${NC}"
echo -e "${BLUE}---------------------${NC}"
whatweb -v $website

echo ""
echo -e "${GREEN}running Nikto tool...${NC}"
echo -e "${BLUE}-------------------${NC}"
nikto -h $website

echo ""
echo -e "${GREEN}running Dirsearch tool...${NC}"
echo -e "${BLUE}-----------------------${NC}"
dirsearch -u $website

echo ""
echo -e "${GREEN}Done!${NC}"

