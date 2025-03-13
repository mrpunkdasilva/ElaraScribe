#!/bin/bash

# Diretório onde o .zip é gerado
ZIP_DIR="./"
# Nome do arquivo .zip
ZIP_FILE="webHelpFP-H2-all.zip"
# Diretório de destino para descompactar
DEST_DIR="./docs/"

# Verifica se o arquivo .zip foi modificado
if [[ -f "$ZIP_DIR/$ZIP_FILE" ]]; then
    # Obtém a data de modificação do arquivo .zip
    LAST_MODIFIED=$(stat -c %Y "$ZIP_DIR/$ZIP_FILE")
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
        # Descompacta o arquivo .zip para a pasta docs
        unzip -o "$ZIP_DIR/$ZIP_FILE" -d "$DEST_DIR"
        # Atualiza a última data de modificação
        echo "$LAST_MODIFIED" > "$LAST_MODIFIED_FILE"
        echo "Arquivo descompactado com sucesso!"
    else
        echo "Nenhuma alteração detectada no arquivo .zip."
    fi
else
    echo "Arquivo .zip não encontrado."
fi
