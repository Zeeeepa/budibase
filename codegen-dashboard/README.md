# Codegen Dashboard

A production-ready Budibase dashboard for monitoring and managing Codegen API resources.

## Features

- **User Management**: View and manage users
- **Agent Runs**: Monitor active runs, view past runs, and create new runs
- **Repository Management**: View repositories and add them as contexts for agent runs
- **Pull Request Management**: Edit pull requests (simple and full versions)
- **Organization Management**: View organization integrations
- **Sandbox Analysis**: Analyze sandbox logs on selected runs
- **Setup Commands**: Generate setup commands for selected repositories
- **Agent Run Control**: Resume completed agent runs

## Directory Structure

- `app-export/`: Contains the exported Budibase application
- `docker/`: Contains Docker Compose files and environment configuration
- `docs/`: Contains documentation and screenshots

## Quick Start

1. Clone this repository
2. Navigate to the `codegen-dashboard/docker` directory
3. Copy `.env.example` to `.env` and update the values
4. Run `docker-compose up -d`
5. Access the dashboard at `http://localhost:3000`
6. Import the application from `app-export/codegen-dashboard.zip`

## Configuration

### Environment Variables

- `BB_ADMIN_USER_EMAIL`: Email for the Budibase admin user
- `BB_ADMIN_USER_PASSWORD`: Password for the Budibase admin user
- `CODEGEN_API_TOKEN`: Your Codegen API token
- `CODEGEN_ORG_ID`: Your Codegen organization ID

## Importing the Dashboard

After starting the Budibase container, follow these steps to import the Codegen Dashboard:

1. Log in to Budibase at `http://localhost:3000`
2. Click on "Create new app"
3. Select "Import app"
4. Upload the `app-export/codegen-dashboard.zip` file
5. Click "Import"

## API Integration

The dashboard integrates with the following Codegen API endpoints:

- User Management: `/users`, `/user/:id`, `/current-user-info`
- Agent Management: `/agent-run`, `/agent-runs`, `/agent-run/:id/resume`, etc.
- Repository Management: `/repositories`
- Pull Request Management: `/pull-request/:id/simple`, `/pull-request/:id`
- Organization Management: `/organizations/:id/integrations`
- Setup Commands: `/setup-commands/generate`
- Sandbox Analysis: `/sandbox/analyze-logs`
- Agent Run Logs: `/agents-alpha/run/:id/logs`

## Screenshots

See the `docs/` directory for screenshots of the dashboard in action.

## Troubleshooting

If you encounter any issues, check the following:

- Ensure your Codegen API token is valid
- Verify that your organization ID is correct
- Check the Docker container logs for any errors

## License

This project is licensed under the same license as Budibase.
