$REGION=""                 # REQUIRED

aws ecr create-repository `
    --region $REGION `
    --replication-configuration '
        {
            "rules": [
                {
                    "destinations": [
                        {
                        "region": "string",
                        "registryId": "string"
                        },
                        ...
                    ],
                    "repositoryFilters": [
                        {
                        "filter": "string",
                        "filterType": "PREFIX_MATCH"
                        },
                        ...
                    ]
                }
                ...
            ]
        }
    '