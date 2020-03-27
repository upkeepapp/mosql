#!/bin/bash
#echo "connection sting : mosql [-c $collections] [--sql $postgres] [--mongo $mongo]"
env
echo "mosql -c collections.yml --sql $POSTGRESQL --mongo $MONGODB"
mosql -c collections.yml --sql $POSTGRESQL --mongo $MONGODB