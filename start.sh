#!/bin/bash
docker build -t ml .
docker run --name ml -d  -v "$(pwd)"/notebooks:/notebooks -v "$(pwd)"/data:/data -p 8888:8888 -i ml 