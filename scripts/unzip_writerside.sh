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
echo "${BLUE}Writerside CLI Unzip Script${RESET}"
echo "${BLUE}---------------------------${RESET}"
echo ""

# Diretório onde o .zip é gerado
ZIP_DIR=".."
# Diretório de destino para descompactar
DEST_DIR="../docs/"

# Encontra o arquivo .zip mais recente na pasta
LATEST_ZIP=$(ls -t "$ZIP_DIR"/*.zip | head -n 1)

# Verifica se um arquivo .zip foi encontrado
if [[ -f "$LATEST_ZIP" ]]; then
    # Obtém a data de modificação do arquivo .zip mais recente
    LAST_MODIFIED=$(stat -c %Y "$LATEST_ZIP")
    # Arquivo para armazenar a última data de modificação
    LAST_MODIFIED_FILE="$ZIP_DIR/.last_modified"

    # Verifica se o arquivo de última modificação existe
    if [[ -f "$LAST_MODIFIED_FILE" ]]; then
        LAST_KNOWN_MODIFIED=$(cat "$LAST_MODIFIED_FILE")
    else
        LAST_KNOWN_MODIFIED=0
    fi

    # Se o arquivo foi modificado desde a última verificação
    if [[ "$LAST_MODIFIED" -gt "$LAST_KNOWN_MODIFIED" ]]; then
        echo "${BLUE}Unzipping latest Writerside CLI...${RESET}"
        # Descompacta o arquivo .zip mais recente para a pasta docs
        unzip -o "$LATEST_ZIP" -d "$DEST_DIR" || { echo "${RED}Error: Failed to unzip Writerside CLI.${RESET}"; exit 1; }
        # Atualiza a última data de modificação
        echo "$LAST_MODIFIED" > "$LAST_MODIFIED_FILE"
        echo "${GREEN}File unzipped successfully: $(basename "$LATEST_ZIP")${RESET}"
    else
        echo "${YELLOW}No changes detected in .zip files. Skipping unzip.${RESET}"
    fi
else
    echo "${RED}Error: No .zip file found in the parent directory.${RESET}"
    exit 1
fi

echo ""
echo "${GREEN}---------------------------${RESET}"
echo "${GREEN}Writerside CLI Unzip process completed!${RESET}"
echo "${GREEN}---------------------------${RESET}"
