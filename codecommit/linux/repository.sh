#!/bin/bash

REPOSITORY_NAME=        # REQUIRED
REGION=                 # REQUIRED

REPOSITORY_DESCRIPTION=

aws codecommit create-repository \
    --region $REGION \
    --repository-name $REPOSITORY_NAME \
    # --repository-description $REPOSITORY_DESCRIPTION