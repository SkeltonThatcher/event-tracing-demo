#!/bin/bash

curl -XGET 'http://localhost:9200/_search?q=message:DatabasePreQuery&pretty' > Database_prequery_search.json
curl -XGET 'http://localhost:9200/_search?q=message:DatabasePostQuery&pretty' > Database_postquery_search.json
curl -XGET 'http://localhost:9200/_search?q=message:DatabaseConnectionFailed&pretty' > Database_connectionfailed_search.json

ruby test_database_query.rb
