#!/usr/bin/env bash
## Written for my own bug testing
for i in $(seq 1 50);
do
    ./delete-hostgroup.sh Test-Hostgroup-${i};
done