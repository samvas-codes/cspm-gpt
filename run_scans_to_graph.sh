#!/bin/sh
AWS_PROFILE=orgs python custom_cartography_sync.py --neo4j-uri bolt://localhost:7687 --neo4j-password-prompt --neo4j-user neo4j --analysis-job-directory ./analysis-jobs --permission-relationships-file ./analysis-jobs/permission_relationships.yaml
