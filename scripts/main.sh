#!/bin/bash
rm -rf ../docs/
./unzip_writerside.sh
writerside.sh build --input-dir=. --output-dir=../docs
./push_remote_repo.sh