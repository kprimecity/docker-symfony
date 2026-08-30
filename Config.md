# Docker Symfony Runtime (All-in-One Engine)

A highly optimized, production-ready, cloud-native Docker image for the **Symfony Framework** running on lightweight **Alpine Linux**. This image bundles a web server (**Nginx**), a fast process manager (**PHP-FPM**), background process tracking (**Supervisor**), and comprehensive multimedia processing libraries (**FFmpeg**, `youtube-dl`). 

It features an intelligent initialization runtime that automatically configures performance metrics, hooks up database drivers, scans for dynamic SSL files, and can bootstrap an entire blank Symfony application upon container boot.

---

## 🚀 Key Features

*   **Multi-Driver Support:** Pre-compiled with `pdo_mysql`, `pdo_pgsql`, and `mysqli` extensions out of the box to prevent driver exceptions.
*   **Built-in Caching:** Pre-configured **Opcache** (tuned for zero-timestamp validation overhead in production) and **Redis** client libraries via PECL.
*   **Spacious Processing Thresholds:** Optimized upload body sizes (`128M`) and synchronous execution timeouts (`300s`) explicitly paired across both Nginx and PHP contexts to process large media files easily.
*   **Dynamic SSL Auto-Linking:** Automatically scans a mounted certificate volume path on boot, linking any custom-named `.pem` or `.crt` certificate pairs straight into standardized server symlinks.
*   **Supervisor Orchestration:** Manages both Nginx and PHP-FPM under a unified, secure root controller while scaling worker child nodes safely under the `www-data` context profile.
*   **PID 1 Signal Compliance:** Replaces the internal initialization shell hook process with master Supervisor tracking commands via `exec "$@"` to support clean `kubectl delete` / graceful termination workflows in Kubernetes.

---

## 🛠️ Stack Configuration Layout

The repository utilizes a modular approach to configuration injection on startup:

*   `custom-php.ini` -> `/usr/local/etc/php/conf.d/custom-php.ini` (Memory, upload limits, and logging overrides)
*   `custom-opcache.ini` -> `/usr/local/etc/php/conf.d/custom-opcache.ini` (Production byte-code compilation configurations)
*   `custom-www-php-fpm.conf` -> `/usr/local/etc/php-fpm.d/www.conf` (Replaces standard FPM pools with customized max child configurations)
*   `nginx.conf` -> `/etc/nginx/nginx.conf` (Secured worker layer explicitly bound to `user www-data;`)
*   `default.conf` -> `/etc/nginx/http.d/default.conf` (Symfony virtual host file with timeout overrides)

---

## 📦 Quick Start (Docker Compose Environment)

To deploy your custom Symfony runtime container coupled directly alongside isolated **PostgreSQL**, **Redis**, and **pgAdmin** data layers, copy the following structure straight into your `docker-compose.yaml`:

```yaml
name: docker-symfony

services:
  # 🌐 1. Custom Symfony Framework & Web Engine Container
  symfony-8008:
    image: kprimecity/docker-symfony:latest
    container_name: symfony-8008
    restart: always
    ports:
      - "8008:80"   # Access site locally via http://localhost:8008
      - "8443:443"  # Access site securely via https://localhost:8443
    volumes:
      - /path/to/html/nginx/ssl:/etc/ssl/nginx  # Mount arbitrary SSL certificate folders
      - /path/to/html/nginx:/etc/nginx/http.d   # Mount Virtual Host configurations
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
      - "5050:80"    # Access database admin center via http://localhost:5050
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

## ⚡ Automated Runtime Logic Flow

Every time your container starts up, the internal `start.sh` entrypoint executes the following processing workflow:

1.  **Configuration Check:** Validates if customized `.ini` or `.conf` parameter blocks exist in the temporary storage layer and moves them cleanly to their respective destination directories.
2.  **Symfony Verification Check:** Scans `/var/www/html/public/index.php`. If it finds a framework file, it safely assumes code is present, skips setups, and wipes the app cache folders cleanly. If the target path is completely empty, it launches automated non-interactive Composer scripts (`--no-interaction --prefer-dist`) to download the `symfony/skeleton` engine core, brings in the `webapp` suite profile, and installs `youtube-dl-php:dev-master` dynamically.
3.  **SSL Auto-Link Loop:** Scans the volume path `/etc/ssl/nginx`. If any valid key and certificate match pair are found (independent of their naming structure), it generates local tracking symlinks (`server.crt` and `server.key`) dynamically.
4.  **Security Handoff:** Recalibrates ownership contexts cleanly across project root directories to match the execution needs of `user www-data;` and overrides Alpine internal proxy storage folder layers safely.
5.  **Process Swapping:** Replaces the tracking shell environment seamlessly by executing incoming `CMD` requirements to give the Supervisor daemon native **PID 1** monitoring capabilities.

---

## ☸️ Moving into Kubernetes Production

When pushing this container into your cloud or staging **Kubernetes Cluster**, keep these infrastructure practices in mind:

1.  **SSL Decentralization:** Disable container SSL mappings and remove the certificate volume layer from your manifest blocks. Let the **Kubernetes Ingress Controller** (coupled alongside `cert-manager` for Automated Let's Encrypt handling) terminate SSL certificates cleanly at your network boundary.
2.  **Pod Resource Constraints:** Because this configuration optimizes your PHP engine up to `pm.max_children = 50` concurrent workers, your pods can scale to capture up to ~3GB of memory under rapid traffic bursts. Ensure your `deployment.yaml` specifies a safe threshold profile:
    ```yaml
    resources:
      requests:
        memory: "1Gi"
        cpu: "500m"
      limits:
        memory: "3Gi"
        cpu: "2"
    ```
3.  **Centralized Pod Logging:** Your application configuration redirects standard internal error streams away from hidden localized tracking logs directly into standard server output pipelines. Inspect real-time error occurrences globally via standard cluster streams:
    ```bash
    kubectl logs deployment/your-symfony-deployment -n your-namespace
    ```

---

## 📄 License

This repository is licensed under the terms of the MIT License. Created and maintained by [kprimecity](https://github.com).
