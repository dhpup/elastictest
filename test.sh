#!/bin/bash
declare -i value

value=$(curl -XGET "https://dhpup-eck.es.us-west-1.aws.found.io:9243/apm-7.16.3-transaction/_search" --header 'Authorization: ApiKey MGFKam9uNEJCWFhBTnc0WUZDRms6c0Z3cnRQTGdTbWl1LWltQ2RvM01xUQ==' -H 'Content-Type: application/json' -d'
{
  "size": 0,
  "query": {
    "range": {
      "@timestamp": {
        "gte": "now-1m/m",
        "lt": "now/m"
      }
    }
  },
  "aggs": {
    "review_average": {
      "avg": {
        "field": "http.response.status_code"
      }
    }
  }
}' | jq '.aggregations.review_average[]')

echo $value

if [ $value -gt 220 ]
then
  exit 0
else
  exit 1
fi