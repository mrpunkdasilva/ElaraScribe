#!/bin/bash

# Define colors
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

# Set -e to exit immediately if a command exits with a non-zero status.
set -e

# Punk Banner
echo "${RED}"
echo "  _  _ ____ _  _ ____ ____ ____ ____ ____"
echo "  |\/| |___ |\ | |___ |__/ |___ |__/ |___"
echo "  |  | |___ | \| |___ |  \ |___ |  \ |___"
echo "${RESET}"
echo "${BLUE}Documentation Build & Deploy Script${RESET}"
echo "${BLUE}-----------------------------------${RESET}"
echo ""

echo "${YELLOW}Starting documentation build and deploy process...${RESET}"

# --- Step 1: Clean previous build output (if any) ---
# This assumes the output goes to a 'docs' directory.
# If your output directory is different, please adjust the path.
echo "${BLUE}Cleaning previous 'docs' directory...${RESET}"
rm -rf ../docs/ || { echo "${RED}Error: Failed to remove ../docs/.${RESET}"; exit 1; }
echo "${GREEN}Previous 'docs' directory cleaned.${RESET}"

# --- Step 2: Unzip Writerside CLI (if needed) ---
echo "${BLUE}Checking and unzipping Writerside CLI...${RESET}"
./unzip_writerside.sh || { echo "${RED}Error: Writerside CLI unzip failed.${RESET}"; exit 1; }
echo "${GREEN}Writerside CLI ready.${RESET}"

# --- Step 3: Build documentation ---
# This assumes writerside.sh is in your PATH after unzipping.
# You might need to adjust the command based on your Writerside setup.
echo "${BLUE}Building documentation...${RESET}"
writerside.sh build --input-dir=. --output-dir=../docs || { echo "${RED}Error: Documentation build failed.${RESET}"; exit 1; }
echo "${GREEN}Documentation built successfully.${RESET}"

# --- Step 4: Push to remote repository ---
echo "${BLUE}Pushing built documentation to remote repository...${RESET}"
./push_remote_repo.sh || { echo "${RED}Error: Failed to push to remote repository.${RESET}"; exit 1; }
echo "${GREEN}Documentation pushed to remote repository.${RESET}"

echo ""
echo "${GREEN}-----------------------------------${RESET}"
echo "${GREEN}Documentation process completed!${RESET}"
echo "${GREEN}-----------------------------------${RESET}"
