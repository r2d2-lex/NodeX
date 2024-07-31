#!/bin/bash
docker build -t node .
docker run -it --name=node1 -p 20022:22 -p 20051:10051 --hostname node1 node
