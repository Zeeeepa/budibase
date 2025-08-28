#!/bin/bash

# Codegen Dashboard Setup Script

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Error: Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Check if .env file exists
if [ ! -f .env ]; then
    echo "Creating .env file from template..."
    cp .env.example .env
    echo "Please edit the .env file with your Codegen API token and organization ID."
    exit 1
fi

# Check if the Budibase container is already running
if docker ps | grep -q budibase; then
    echo "Budibase container is already running."
else
    echo "Starting Budibase container..."
    docker-compose up -d
    echo "Budibase container started."
fi

# Wait for Budibase to start
echo "Waiting for Budibase to start..."
sleep 10

# Check if the app export file exists
if [ ! -f "../app-export/codegen-dashboard.zip" ]; then
    echo "Error: App export file not found at '../app-export/codegen-dashboard.zip'"
    echo "Please build the app first or download it from the repository."
    exit 1
fi

# Copy the app export file to the container
echo "Copying app export file to the container..."
docker cp ../app-export/codegen-dashboard.zip budibase:/app-import/

echo "Setup completed successfully."
echo "Now you can import the app through the Budibase UI:"
echo "1. Log in to Budibase at http://localhost:10000"
echo "2. Click on 'Create new app'"
echo "3. Select 'Import app'"
echo "4. Select the 'codegen-dashboard.zip' file"
echo "5. Click 'Import'"

