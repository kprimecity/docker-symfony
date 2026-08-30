# docker-symfony 🎁

A highly optimized, production-ready, cloud-native Docker image for the **Symfony Framework** running on a lightweight Alpine Linux base. This image bundles an optimized web server (**Nginx**), a high-performance process manager (**PHP-FPM**), process tracking (**Supervisor**), and comprehensive multimedia processing utilities (**FFmpeg**, `youtube-dl`). 

It features an intelligent initialization runtime that configures performance metrics, hooks up multi-driver database extensions, scans for dynamic SSL files, and automatically bootstraps a blank Symfony framework template upon container boot if no code is present.

[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=kprimecity.io&message=GitHub&logo=github)](https://github.com/kprimecity)
[![GitHub Stars](https://img.shields.io/github/stars/kprimecity/docker-symfony.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/kprimecity/docker-symfony)
[![GitHub Release](https://img.shields.io/github/release/kprimecity/docker-symfony.svg?color=008000&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/kprimecity/docker-symfony/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/kprimecity/docker-symfony.svg?color=008000&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/kprimecity/docker-symfony)

<div align="center" width="100%">
    <img width="100%" height="auto" alt="docker-symfony" src="https://github.com/user-attachments/assets/c52e6e0c-6097-4f8e-9fb2-57b439e6f5c7" />
</div>

___

## 🐳 Core Component Stack

*   **Nginx:** High-performance web server configured to securely execute tasks under `user www-data;`. Virtual host routing files reside inside `/etc/nginx/http.d/` for easy customization.
*   **PHP-FPM:** Running high-concurrency worker pooling models (`pm.max_children = 50`) optimized to mitigate memory leaks by recycling processes safely via `max_requests`.
*   **Symfony Ready:** Built-in runtime checks map your code directly to the modern web document root location at `/var/www/html/public`.
*   **Alpine Linux:** Minimal, security-focused base image layer ensuring lightweight image footprint and fast deployments.

---

## 📦 Extracted Image Features

*   **Multi-Driver Connection Unification:** Pre-compiled with **`pdo_mysql`**, **`pdo_pgsql`**, and `mysqli` extensions out of the box to eradicate connection errors.
*   **Redis Caching Engine:** Built-in PHP-Redis extension support compiled natively via PECL for lightning-fast caching, user sessions, or Symfony Messenger background queues.
*   **Spacious Thresholds:** Optimized upload thresholds (`128M`) paired cleanly alongside expanded execution buffers (`300s`) to ensure long video processing jobs handle smoothly.
*   **Dynamic SSL Auto-Linking:** Scans mounted certificate folders on boot, linking any custom-named `.pem` or `.crt` file combinations directly into unified server symlinks.
*   **PID 1 Compliance:** Implements `exec "$@"` process forwarding hooks to place the Supervisor engine as Process ID 1 for clean shutdown signaling in production clusters.

---

## ⚙️ Supported Architectures

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | `amd64-<version-tag>` |
| arm64 | ✅ | `arm64v8-<version-tag>` |

---

## 🛠️ Local Stack Configuration Layout

This is the orchestration profile showing how to hook up your Symfony container seamlessly alongside isolated **PostgreSQL**, **Redis**, and **pgAdmin** data layers.

```yaml
name: docker-symfony

services:
  # 🌐 1. Custom Symfony Framework & Web Engine Container
  symfony-8008:
    image: ghcr.io/kprimecity/docker-symfony:latest
    container_name: symfony-8008
    restart: always
    ports:
      - "8008:80"   # Access site locally via http://localhost:8008
      - "8443:443"  # Access site securely via https://localhost:8443
    volumes:
      - /path/to/html/nginx/ssl:/etc/ssl/nginx  # Mount custom SSL certificate pair folders
      - /path/to/html/nginx:/etc/nginx/http.d   # Mount Virtual Host configuration blocks
      - /path/to/html:/var/www/html             # Mount the Symfony framework source files
    environment:
      DATABASE_URL: "postgresql://symfony_user:secure_password@postgres-db:5432/symfony_db?serverVersion=16&charset=utf8"
      REDIS_URL: "redis://:redis_secure_pass@redis-cache:6339"
    depends_on:
      postgres-db:
        condition: service_healthy
      redis-cache:
        condition: service_healthy
    networks:
      - docker-symfony-network

  # 🐘 2. Standalone PostgreSQL Engine Container
  postgres-db:
    image: postgres:16-alpine
    container_name: postgres_db_engine
    restart: always
    environment:
      POSTGRES_DB: symfony_db
      POSTGRES_USER: symfony_user
      POSTGRES_PASSWORD: secure_password
    volumes:
      - postgres_data:/var/lib/postgresql/data
    ports:
      - "5432:5432"
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U symfony_user -d symfony_db"]
      interval: 5s
      timeout: 5s
      retries: 5
    networks:
      - docker-symfony-network

  # 🔴 3. Standalone Redis Cache Storage Container
  redis-cache:
    image: redis:7-alpine
    container_name: redis_cache_engine
    restart: always
    command: redis-server --port 6339 --requirepass redis_secure_pass
    volumes:
      - redis_data:/data
    healthcheck:
      test: ["CMD", "redis-cli", "-p", "6339", "ping"]
      interval: 5s
      timeout: 3s
      retries: 5
    networks:
      - docker-symfony-network

  # 🗄️ 4. Standalone pgAdmin Management UI Container
  pgadmin-ui:
    image: dpage/pgadmin4
    container_name: pgadmin_management_web
    restart: always
    environment:
      PGADMIN_DEFAULT_EMAIL: admin@example.com
      PGADMIN_DEFAULT_PASSWORD: admin_secure_pass
    ports:
      - "5050:80"    # Access database administration center via http://localhost:5050
    depends_on:
      - postgres-db
    networks:
      - docker-symfony-network

volumes:
  postgres_data:
  redis_data:

networks:
  docker-symfony-network:
    name: docker-symfony-network
    driver: bridge
  default:
    name: docker-symfony_default
```

---

## ⚡ Automated Runtime Initialization Workflow

Every time your container boots up, the interior entrypoint script (`start.sh`) processes the following sequential logic parameters:

1.  **Configuration Migration:** Scans for customized parameter configurations (`custom-php.ini`, `custom-opcache.ini`, `custom-www-php-fpm.conf`) and injects them safely across their spec directories.
2.  **Code Presence Verification:** Checks for `/var/www/html/public/index.php`. If it exists, it skips installation and clears application cache files. If it is missing, it executes automated non-interactive Composer scripts (`--no-interaction --prefer-dist`) to download the `symfony/skeleton` application layer core, pulls the `webapp` profile, and downloads the `youtube-dl-php` framework dependencies automatically.
3.  **Dynamic Certificate Mapping:** Scans `/etc/ssl/nginx`. If any valid private key and certificate pair match are found, it generates local tracking symbolic links (`server.crt` and `server.key`) dynamically.
4.  **Security Handoff:** Calibrates directory permissions across project structures cleanly to `www-data` and transparently swaps process tracking control over to Supervisor to enforce **PID 1 compliance**.

---

## 📝 Production Notes

*   **Production Opcache Tuning:** The default `custom-opcache.ini` establishes `opcache.validate_timestamps=0`. This locks compiled code into memory permanently for extreme speed. Remember that new code updates require a total container restart or pod rollout to flush the memory pool.
*   **Kubernetes Isolation Strategy:** In production cluster topologies, strip out port 443 listeners and volume-mapped SSL files entirely. Let your **Kubernetes Ingress Controller** (coupled alongside `cert-manager` for Automated Let's Encrypt handling) decrypt and terminate SSL traffic natively at the cluster boundary, passing standard HTTP traffic on Port 80 down to your pods.

---

# 🌐 Usage

After running the container, access your application in your browser:

```
https://localhost:8443
```

You should see your index page rendered by the `docker-symfony's nginx server`.

<div align="center" width="100%">
  <img width="100%" height="auto" alt="Home Page Screenshot" src="https://github.com/user-attachments/assets/3c2c8de8-3c72-4a75-b7a6-393fe40c4cb3" />

</div>

<br/>

>[!NOTE]
> No need to start `Any web server` to access your project.

___


# 🎯 Versions

* __[v4.0.0] : 08/30/2026__
* __[v3.0.9] : 10/06/2025__
* __[v3.0.0] : 09/28/2025__
* __[v2.1.0] : 09/16/2025__
* __[v2.0.9] : 08/31/2025__
* __[v1.0.0] : 08/09/2025__
___

## 📄 License ~ [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/kprimecity/docker-symfony/blob/main/LICENSE)

This project is licensed under the terms of the [GPL-3.0 License](https://github.com/kprimecity/docker-symfony/blob/main/LICENSE). Created and maintained by [kprimecity](https://github.com/kprimecity).

___

Take care! 💖 
