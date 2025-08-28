# Codegen Dashboard Installation Guide

This guide provides detailed instructions for installing and configuring the Codegen Dashboard.

## Prerequisites

- Docker Engine (version 20.10.0 or later)
- Docker Compose (version 2.0.0 or later)
- A valid Codegen API token
- Your Codegen organization ID

## Installation Steps

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/codegen-dashboard.git
cd codegen-dashboard
```

### 2. Configure Environment Variables

Navigate to the `docker` directory and create a `.env` file:

```bash
cd docker
cp .env.example .env
```

Edit the `.env` file and update the following values:

```
# Budibase Admin Credentials
BB_ADMIN_USER_EMAIL=your_email@example.com
BB_ADMIN_USER_PASSWORD=your_secure_password

# Codegen API Configuration
CODEGEN_API_TOKEN=your_codegen_api_token
CODEGEN_ORG_ID=your_organization_id
```

### 3. Start the Docker Container

```bash
docker-compose up -d
```

This will start the Budibase container and make it available at `http://localhost:10000`.

### 4. Import the Codegen Dashboard App

#### Option 1: Using the Import Script

```bash
./import-app.sh
```

#### Option 2: Manual Import

1. Log in to Budibase at `http://localhost:10000` using the credentials you set in the `.env` file
2. Click on "Create new app"
3. Select "Import app"
4. Upload the `app-export/codegen-dashboard.zip` file
5. Click "Import"

### 5. Configure the App

After importing the app, you need to configure it to use your Codegen API token and organization ID:

1. Open the Codegen Dashboard app
2. Navigate to the "Settings" screen
3. Enter your Codegen API token and organization ID
4. Click "Save"

## Updating the Dashboard

To update the Codegen Dashboard to a newer version:

1. Pull the latest changes from the repository:

```bash
git pull
```

2. Restart the Docker container:

```bash
cd docker
docker-compose down
docker-compose up -d
```

3. Import the updated app (if necessary) using the steps in section 4.

## Troubleshooting

### Common Issues

#### Container Fails to Start

If the container fails to start, check the logs:

```bash
docker-compose logs
```

#### App Import Fails

If the app import fails, ensure that:

- The Budibase container is running
- The app export file is valid
- You have sufficient permissions

#### API Connection Issues

If the dashboard cannot connect to the Codegen API, check that:

- Your API token is valid
- Your organization ID is correct
- The API endpoints are accessible from your network

### Getting Help

If you encounter any issues not covered in this guide, please:

1. Check the [Budibase documentation](https://docs.budibase.com/)
2. Check the [Codegen API documentation](https://docs.codegen.com/api-reference/)
3. Open an issue in the repository

## Advanced Configuration

### Custom Port

To use a custom port instead of the default 10000, edit the `docker-compose.yml` file and change the port mapping:

```yaml
ports:
  - "your_custom_port:80"
```

### SSL/TLS Configuration

To enable SSL/TLS, you can use a reverse proxy like Nginx or Traefik. Here's an example Nginx configuration:

```nginx
server {
    listen 443 ssl;
    server_name your-domain.com;

    ssl_certificate /path/to/your/certificate.crt;
    ssl_certificate_key /path/to/your/private.key;

    location / {
        proxy_pass http://localhost:10000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

### Persistent Storage

The Docker Compose file is configured to use a Docker volume for persistent storage. If you want to use a host directory instead, modify the `docker-compose.yml` file:

```yaml
volumes:
  - /path/on/host:/data
```

