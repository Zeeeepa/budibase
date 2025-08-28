# Codegen Dashboard

A production-ready Budibase dashboard for monitoring and managing Codegen API resources.

## Overview

The Codegen Dashboard is a Budibase application that integrates with the Codegen API to provide a user-friendly interface for monitoring and managing Codegen resources. It includes features for viewing and managing users, agent runs, repositories, pull requests, organizations, and more.

## Features

- **User Management**: View and manage users
- **Agent Runs**: Monitor active runs, view past runs, and create new runs
- **Repository Management**: View repositories and add them as contexts for agent runs
- **Pull Request Management**: Edit pull requests (simple and full versions)
- **Organization Management**: View organization integrations
- **Sandbox Analysis**: Analyze sandbox logs on selected runs
- **Setup Commands**: Generate setup commands for selected repositories
- **Agent Run Control**: Resume completed agent runs

## Getting Started

See the [Codegen Dashboard documentation](./codegen-dashboard/README.md) for detailed instructions on setting up and using the dashboard.

## Quick Start

1. Clone this repository
2. Navigate to the `codegen-dashboard/docker` directory
3. Copy `.env.example` to `.env` and update the values
4. Run `docker-compose up -d`
5. Access the dashboard at `http://localhost:3000`
6. Import the application from `app-export/codegen-dashboard.zip`

## Documentation

- [User Guide](./codegen-dashboard/docs/user-guide.md)
- [Installation Guide](./codegen-dashboard/docs/installation-guide.md)
- [API Integration](./codegen-dashboard/README.md#api-integration)

## License

This project is licensed under the same license as Budibase.
