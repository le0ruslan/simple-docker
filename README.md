# Simple Docker - README

## Overview

This project introduces the basics of working with Docker by guiding through the process of creating and managing Docker images and containers. As part of the assignment, a custom Docker image for a simple web server was developed, including the implementation of a basic `nginx` configuration and integration with Docker Compose. The project also involved using security tools like `Dockle` to ensure best practices in Docker image creation.

The detailed results of the work and step-by-step progress are documented in the accompanying `report.md` file located in the repository.

---

## Tasks and Accomplishments

### 1. Familiarization with Docker and nginx:
- Pulled the official `nginx` image.
- Ran and managed the `nginx` container.
- Inspected container configurations and explored features like port mapping.

### 2. Operations with Containers:
- Modified the `nginx.conf` file to display server status on a custom endpoint.
- Exported and imported containers.
- Demonstrated various Docker commands for managing images and containers.

### 3. Development of a Mini Web Server:
- Wrote a mini server using **C** and **FastCGI**.
- Configured `nginx` to proxy requests to the custom server.

### 4. Creation of a Custom Docker Image:
- Developed a `Dockerfile` to build and run the mini server.
- Integrated the `nginx` configuration for reverse proxying and status monitoring.

### 5. Security Check with Dockle:
- Analyzed the Docker image for vulnerabilities and resolved issues flagged by `Dockle`.

### 6. Docker Compose Setup:
- Designed a `docker-compose.yml` file to manage multiple Docker containers, ensuring seamless communication between them.

---

## Key Files

- **`report.md`:** Contains a detailed breakdown of each task, with screenshots and command outputs.
- **`Dockerfile`:** Defines the steps to build the custom Docker image.
- **`docker-compose.yml`:** Configures multi-container deployment.
- **Source files:**
  - Mini web server in `src/server/`.
  - `nginx` configuration files in `./nginx/`.
