# Codegen Dashboard App Export

This directory contains the exported Budibase application for the Codegen Dashboard.

## Files

- `app-structure.json`: A JSON file describing the structure of the Budibase application
- `codegen-dashboard.zip`: The exported Budibase application (to be created after building the app)

## Building the App

To build the Codegen Dashboard app:

1. Start Budibase using the Docker Compose file in the `../docker` directory
2. Log in to Budibase at `http://localhost:10000`
3. Create a new app from scratch
4. Build the app according to the structure described in `app-structure.json`
5. Export the app from the Budibase UI
6. Save the exported app as `codegen-dashboard.zip` in this directory

## Importing the App

To import the Codegen Dashboard app:

1. Start Budibase using the Docker Compose file in the `../docker` directory
2. Log in to Budibase at `http://localhost:10000`
3. Click on "Create new app"
4. Select "Import app"
5. Upload the `codegen-dashboard.zip` file
6. Click "Import"

## Note

The `codegen-dashboard.zip` file is not included in this repository due to its size. You can build it yourself by following the instructions above.

