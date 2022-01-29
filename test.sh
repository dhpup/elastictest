#!/bin/bash
value=$(curl -XGET "https://dhpup-eck.es.us-west-1.aws.found.io:9243/apm-7.16.3-transaction/_search" --header 'Authorization: ApiKey MGFKam9uNEJCWFhBTnc0WUZDRms6c0Z3cnRQTGdTbWl1LWltQ2RvM01xUQ==' -H 'Content-Type: application/json' -d'
{
  "size": 0,
  "aggs": {
    "review_average": {
      "avg": {
        "field": "http.response.status_code"
      }
    }
  }
}' | jq '.aggregations.review_average[]')

echo "$value > 200" | bc
