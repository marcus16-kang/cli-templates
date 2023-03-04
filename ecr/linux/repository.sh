#!/bin/bash

REPOSITORY_NAME=        # REQUIRED
REGION=                 # REQUIRED

MUTABILITY=MUTABLE      # optional, `MUTABLE`(default) or `IMMUTABLE`
SCANNING=false          # optional, `false`(default) or `true`
ENCRYPTION_TYPE=AES256  # optional, `AES256`(default) or `KMS`
KMS_KEY=                # optional, KMS alias, key ID, or full ARN of AWS KMS key

aws ecr create-repository \
    --region $REGION \
    --repository-name $REPOSITORY_NAME \
    --image-tag-mutability $MUTABILITY \
    --image-scanning-configuration scanOnPush=$SCANNING \
    # --encryption-configuration encryptionType=$ENCRYPTION_TYPE #,kmsKey=$KMS_KEY \
    # --tags Key=string,Value=string Key=string,Value=string