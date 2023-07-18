#!/bin/sh
docker run -p7474:7474 -p7687:7687  --volume=$(pwd)/plugins:/plugins  --volume=$(pwd)/conf:/conf --env NEO4J_AUTH=neo4j/password arm64v8/neo4j:4.4.21-community
