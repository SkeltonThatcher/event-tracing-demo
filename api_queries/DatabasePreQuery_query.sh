#!/bin/bash

curl -XGET 'http://localhost:9200/_search?q=message:DatabasePreQuery&pretty'
