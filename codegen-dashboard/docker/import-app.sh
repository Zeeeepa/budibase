#!/bin/bash

# This script helps import the Codegen Dashboard app into Budibase

# Check if the container is running
if ! docker ps | grep -q budibase; then
  echo "Error: Budibase container is not running. Please start it with 'docker-compose up -d'"
  exit 1
fi

# Check if the app export file exists
if [ ! -f "../app-export/codegen-dashboard.zip" ]; then
  echo "Error: App export file not found at '../app-export/codegen-dashboard.zip'"
  exit 1
fi

# Copy the app export file to the container
echo "Copying app export file to the container..."
docker cp ../app-export/codegen-dashboard.zip budibase:/app-import/

echo "App export file copied successfully."
echo "Now you can import the app through the Budibase UI:"
echo "1. Log in to Budibase at http://localhost:10000"
echo "2. Click on 'Create new app'"
echo "3. Select 'Import app'"
echo "4. Select the 'codegen-dashboard.zip' file"
echo "5. Click 'Import'"

