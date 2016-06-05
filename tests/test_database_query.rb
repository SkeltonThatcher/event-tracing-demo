require 'json'

file = open("Database_prequery_search.json")
prequery = JSON.parse(file.read)

file = open("Database_postquery_search.json")
postquery = JSON.parse(file.read)

file = open("Database_connectionfailed_search.json")
connectionfailed = JSON.parse(file.read)

expected_prequery_event  = (prequery["hits"]["total"] == 1) 
expected_postquery_event = (postquery["hits"]["total"] == 1) 
unexpected_connectionfailed_event = (connectionfailed["hits"]["total"] == 0)

expected_prequery_event && expected_postquery_event && unexpected_connectionfailed_event



