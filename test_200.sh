#!/bin/bash
response=$(curl -sL -w "%{http_code}" "http://localhost:3000" -o /dev/null)

# response=${response// /}

# echo $response 

if [ $response = 200 ]; then 
	echo server is up and running
else
	echo server is not running
fi
	
