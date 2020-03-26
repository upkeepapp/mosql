#!/bin/bash
#echo "connection sting : mosql [-c $collections] [--sql $postgres] [--mongo $mongo]"
echo postgres mongo
mosql [-c upkeep_schema.yaml] [--sql $1] [--mongo $1]
