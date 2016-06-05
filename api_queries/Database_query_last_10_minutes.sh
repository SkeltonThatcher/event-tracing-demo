#!/bin/bash

curl -XGET 'http://localhost:9200/_search?q=message:Database*&pretty' -d '
{ 
   "query" : {
      "range" : {
         "@timestamp" : {
            "gte" : "now-10m/m"
         }
      }
   }
}'
