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
# Note: The 'docs' directory removal is commented out as the Docker build
# now outputs to './output'. If you need to clean a specific 'docs' directory,
# please uncomment and adjust the path.
# echo "${BLUE}Cleaning previous 'docs' directory...${RESET}"
# rm -rf ../docs/ || { echo "${RED}Error: Failed to remove ../docs/.${RESET}"; exit 1; }
# echo "${GREEN}Previous 'docs' directory cleaned.${RESET}"

# --- Step 2: Build documentation using Docker Compose ---
echo "${BLUE}Building documentation with Docker Compose...${RESET}"
docker compose run --rm writerside-builder || { echo "${RED}Error: Docker Compose build failed.${RESET}"; exit 1; }
echo "${GREEN}Documentation built successfully.${RESET}"

# --- Step 3: Push to remote repository ---
# This step assumes push_remote_repo.sh handles the actual git push.
# You might want to integrate its logic directly here or ensure it's robust.
echo "${BLUE}Pushing built documentation to remote repository...${RESET}"
./push_remote_repo.sh || { echo "${RED}Error: Failed to push to remote repository.${RESET}"; exit 1; }
echo "${GREEN}Documentation pushed to remote repository.${RESET}"

echo ""
echo "${GREEN}-----------------------------------${RESET}"
echo "${GREEN}Documentation process completed!${RESET}"
echo "${GREEN}-----------------------------------${RESET}"