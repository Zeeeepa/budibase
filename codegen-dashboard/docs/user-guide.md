# Codegen Dashboard User Guide

This guide provides detailed instructions for using the Codegen Dashboard.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Dashboard Overview](#dashboard-overview)
3. [User Management](#user-management)
4. [Agent Runs](#agent-runs)
5. [Repositories](#repositories)
6. [Pull Requests](#pull-requests)
7. [Organizations](#organizations)
8. [Sandbox Logs](#sandbox-logs)
9. [Setup Commands](#setup-commands)
10. [Settings](#settings)

## Getting Started

### Prerequisites

- Docker and Docker Compose installed
- A valid Codegen API token
- Your Codegen organization ID

### Installation

1. Clone the repository
2. Navigate to the `codegen-dashboard/docker` directory
3. Copy `.env.example` to `.env` and update the values
4. Run `docker-compose up -d`
5. Access the dashboard at `http://localhost:10000`
6. Import the application from `app-export/codegen-dashboard.zip`

## Dashboard Overview

The Codegen Dashboard provides a comprehensive interface for monitoring and managing your Codegen resources. The main dashboard screen displays key metrics and status information:

- Active agent runs
- Recent agent runs
- Repository count
- User count
- Organization information

## User Management

The Users screen allows you to view and manage users in your Codegen organization.

### Features

- View a list of all users
- View user details
- Filter users by role or status

## Agent Runs

The Agent Runs screen allows you to monitor and manage agent runs.

### Features

- View active agent runs
- View past agent runs
- Create new agent runs
- Resume completed agent runs
- Ban/unban checks for agent runs
- Remove Codegen from PR
- View agent run logs

### Creating a New Agent Run

1. Click the "Create Run" button
2. Select a repository
3. Enter a message
4. Select a trigger type
5. Click "Create"

### Viewing Agent Run Logs

1. Click on an agent run in the list
2. Click the "View Logs" button
3. The logs will be displayed in a modal

### Resuming an Agent Run

1. Click on a completed agent run in the list
2. Click the "Resume" button
3. The agent run will be resumed

## Repositories

The Repositories screen allows you to view and manage repositories.

### Features

- View a list of all repositories
- Filter repositories by name or status
- Add repositories as contexts for agent runs
- Generate setup commands for repositories

## Pull Requests

The Pull Requests screen allows you to view and edit pull requests.

### Features

- View a list of pull requests for a selected repository
- Edit pull request title and body (simple)
- Edit pull request title, body, and state (full)

### Editing a Pull Request

1. Select a repository
2. Select a pull request
3. Click the "Edit" button
4. Update the title and/or body
5. Click "Save"

## Organizations

The Organizations screen allows you to view organization information and integrations.

### Features

- View organization details
- View organization integrations

## Sandbox Logs

The Sandbox Logs screen allows you to analyze sandbox logs.

### Features

- Enter logs to analyze
- View analysis results
- Analyze logs from selected agent runs

### Analyzing Logs

1. Select an agent run or enter logs manually
2. Click the "Analyze" button
3. View the analysis results

## Setup Commands

The Setup Commands screen allows you to generate setup commands for repositories.

### Features

- Select a repository
- Generate setup commands
- View and copy setup commands

### Generating Setup Commands

1. Select a repository
2. Click the "Generate" button
3. View and copy the generated commands

## Settings

The Settings screen allows you to configure the dashboard.

### Features

- Set Codegen API token
- Set organization ID
- Configure refresh intervals
- Configure display options

### Updating Settings

1. Enter your Codegen API token
2. Enter your organization ID
3. Configure other settings as needed
4. Click "Save"

