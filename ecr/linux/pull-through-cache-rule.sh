#!/bin/bash

PREFIX=         # REQUIRED
UPSTREAM_URL=   # REQUIRED
REGION=         # REQUIRED

aws ecr create-pull-through-cache-rule \
    --region $REGION \
    --ecr-repository-prefix $PREFIX \
    --upstream-registry-url $UPSTREAM_URL