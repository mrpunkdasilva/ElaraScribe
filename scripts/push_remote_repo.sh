#!/bin/bash

# Define colors
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

# Set -e to exit immediately if a command exits with a non-zero status.
set -e

# Punk Banner for Push Script
echo "${RED}"
echo "  _  _ ____ _  _ ____ ____ ____ ____ ____"
echo "  |\/| |___ |\ | |___ |__/ |___ |__/ |___"
echo "  |  | |___ | \| |___ |  \ |___ |  \ |___"
echo "${RESET}"
echo "${BLUE}Git Push Script${RESET}"
echo "${BLUE}-----------------${RESET}"
echo ""

# Commit message with current timestamp
COMMIT_MESSAGE="docs: Auto-generated documentation update - $(date '+%Y-%m-%d %H:%M:%S')"

echo "${YELLOW}Checking for changes to commit...${RESET}"

# Check if there are any changes (staged or unstaged)
if [[ -z $(git status --porcelain) ]]; then
    echo "${YELLOW}No changes detected in the repository. Nothing to commit.${RESET}"
else
    echo "${BLUE}Changes detected. Staging and committing...${RESET}"

    # Add all changes to the staging area
    git add . || { echo "${RED}Error: Failed to add files to staging area.${RESET}"; exit 1; }

    # Create a commit with the dynamic message
    git commit -m "$COMMIT_MESSAGE" || { echo "${RED}Error: Failed to create commit.${RESET}"; exit 1; }

    echo "${GREEN}Changes committed successfully!${RESET}"

    # Push changes to the remote repository
    echo "${BLUE}Pushing changes to remote repository (origin main)...${RESET}"
    git push origin main || { echo "${RED}Error: Failed to push to remote repository.${RESET}"; exit 1; }

    echo "${GREEN}Changes pushed to GitHub successfully!${RESET}"
fi

echo ""
echo "${GREEN}-----------------${RESET}"
echo "${GREEN}Git Push process completed!${RESET}"
echo "${GREEN}-----------------${RESET}"
