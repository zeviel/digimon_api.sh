#!/bin/bash

api="https://digimon-api.vercel.app/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"


function get_all_digimons() {
	curl --request GET \
		--url "$api/digimon" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_digimon_by_name() {
	# 1 - name: (string): the name of the Digimon to retrieve
	curl --request GET \
		--url "$api/digimon/name/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_digimon_by_level() {
	# 1 - level: (string): the level of the Digimon to retrieve
	curl --request GET \
		--url "$api/digimon/level/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
