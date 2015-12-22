#!/usr/bin/env bash
## Written for my own bug testing
for i in $(seq 1 50);
do
    ./create-simple-hostgroup.sh 1 Test-Hostgroup-${i};
done