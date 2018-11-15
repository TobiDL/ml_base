#!/bin/bash
docker build -t ml .
docker run --name ml -d  -v ~/docker-demo/notebooks:/notebooks -v ~/docker-demo/data:/data -v ~/docker-demo/logs:/tmp/tflearn_logs -p 8888:8888 -i ml 