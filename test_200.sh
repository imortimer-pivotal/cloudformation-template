#!/bin/bash
response=$(curl -sL -w "%{http_code} %{url_effective}\\n" "http://localhost:3000" -o /dev/null)

response=${response// /}

echo $response 

if [ $response = 200http://localhost:3000/ ]; then 
	echo server is up and running
else
	echo server is not running
fi
	
