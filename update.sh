#!/bin/bash

echo "Updating Repo..."
git add .
message="foo"
echo $message
git commit -m "${message}"
git push origin master
git push heroku master
echo "Update completed. Boo Ya"
