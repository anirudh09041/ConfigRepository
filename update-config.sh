#!/bin/bash

# Commit and push changes to Git repository
git add .
git commit -m "Update configuration"
git push origin master

# Trigger configuration refresh using the /actuator/refresh endpoint
curl -X POST http://localhost:8080/actuator/refresh

echo "Configuration updated and refresh triggered."

