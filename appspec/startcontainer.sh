#!/bin/bash
$(aws ecr get-login --no-include-email --region us-west-1)
docker pull 133403821707.dkr.ecr.us-west-1.amazonaws.com/juntl/pywebapp:latest || {
    echo "ERROR: docker pull failed. Sleeping for 10 minutes to allow investigation..."
    sleep 600
    exit 1
}
docker run --name pywebapp -p 80:8080 --detach 133403821707.dkr.ecr.us-west-1.amazonaws.com/juntl/pywebapp:latest
