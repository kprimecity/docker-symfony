# docker-symfony 🎁
A Dockerized Symfony application based on Alpine Image, using the latest version of PHP (all necessary modules are included) and the latest version of Nginx server. This setup is ideal for local development, testing, and production environments. The container comes with: `bash`, `nano`, `curl`, `composer` and `symfony cli` packages, so you can use them directly in the container.

[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=kprimecity.io&message=GitHub&logo=github)](https://github.com/kprimecity "view the source for all of our repositories.")
[![GitHub Stars](https://img.shields.io/github/stars/kprimecity/docker-symfony.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/kprimecity/docker-symfony)
[![GitHub Release](https://img.shields.io/github/release/kprimecity/docker-symfony.svg?color=008000&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/kprimecity/docker-symfony/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=kprimecity.io&message=GitHub%20Package&logo=github)](https://github.com/kprimecity/docker-symfony/packages)
[![Docker Pulls](https://img.shields.io/docker/pulls/kprimecity/docker-symfony.svg?color=008000&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/kprimecity/docker-symfony)
[![Docker Stars](https://img.shields.io/docker/stars/kprimecity/docker-symfony.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/kprimecity/docker-symfony)

<div align="center" width="100%">
    <img width="100%" height="auto" alt="docker-symfony" src="https://github.com/user-attachments/assets/c52e6e0c-6097-4f8e-9fb2-57b439e6f5c7" />
</div>

___

# 🐳 Symfony inside Alpine Docker Image

A lightweight Docker image combining the latest version of PHP ([php:fpm-alpine](https://hub.docker.com/layers/library/php/fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore)) and the latest version of Nginx server to run the latest version of [Symfony](https://symfony.com/doc/current/setup.html) PHP applications. Ideal for local development, testing, or production environments.

* [Nginx](https://nginx.org) is a simple and powerfull webserver used to serve your php files. The config files reside in `/etc/nginx/http.d` for easy user customization.
* [PHP](https://www.php.net) is a popular general-purpose scripting language that powers everything from your blog to the most popular websites.
* [Symfony](https://symfony.com/doc/current/setup.html) is a web application framework that makes it easy to develop robust and scalable web applications. The index file of your project resides in `/var/www/html/web/public`
* [Alpine Linux](https://hub.docker.com/_/alpine) is a lightweight and security-focused Linux distribution known for its minimal size. This small footprint makes the Alpine image a popular choice for creating compact and efficient Docker containers.

___

# 📦 Features

* __Lightweight__: Built on Alpine Linux for minimal size.
* __PHP__: Full PHP support with FPM (FastCGI Process Manager).
* __Nginx__: High-performance web server with reverse proxy capabilities.
* __Symfony Ready__: Out-of-the-box support for Symfony apps in `/var/www/html/web`.
* __Easy Configuration__: Customizable Nginx and PHP-FPM settings.
* __Ready to Use__: Out-of-the-box support for PHP applications.

___

# ⚙️ Supported Architectures

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64v8-\<version tag\> |

___

# 🛠️ Configuration

This is the description of the Docker Compose file configuration.

>[!NOTE]
>This Image comes with the `Symfony Server Certificate` so you can use `https://` to access your project in development mode.

You can use [Nginx Proxy Manager](https://nginxproxymanager.com/guide/) to put your project under a Reverse Proxy. In production mode.

| 📌 Ports | 📚 Description |
| :----: | :----: |
| `8008` | Bind Port `80`: No `ssl` |
| `8043` | Bind Port `443`: With `Symfony ssl` |
| __📁 Volume__ | __📚 Description__ |
| `./path/to/web/nginx` | Mount Nginx configuration folder: `/etc/nginx/http.d` |
| `./path/to/html/web` | Mount symfony framework folder: `/var/www/html/web` |

___

# 🚀 Getting Started

To help you get started creating a container from this image you can either use docker-compose or the docker cli. The easy way is to follow this steps:

1. Clone or download the Repository: `git clone https://github.com/kprimecity/docker-symfony.git`,
2. Go in the folder: `cd docker-symfony`
3. Modify the docker-compose file according to your needs: `sudo nano docker-compose.yaml`,
4. Run `sudo docker compose up -d` to set up and start a fresh Symfony project,
5. Wait a few minutes for the Symfony framework to be downloaded, you can check the `container log` to see the progress,
6. Open `https://localhost:8043` in your favorite web browser to access your project,
7. Replace `localhost` by your local ip address.

### 1. Clone the Repository

```bash
git clone https://github.com/kprimecity/docker-symfony.git
cd docker-symfony
```

### 2. Set your configuration 

```bash
sudo nano docker-compose.yaml
```

>[!NOTE]
>Modify the Docker Compose file before running it; so you can adjust your container according to your needs. Run the container using: `sudo docker compose up -d`. Wait a few minutes for the Symfony framework to be downloaded.

Docker compose file:

```yaml
name: docker-symfony
services:
    symfony-8008: # service name
        image: ghcr.io/kprimecity/docker-symfony:latest
        container_name: symfony-8008 # Your Container name
        restart: always
        ports:
            - 8008:80 # http://xx.xx.xx.xx:8008
            - 8043:443 # Optional: https://xx.xx.xx.xx:8043
        volumes:
            - /path/to/html/nginx/8008:/etc/nginx/http.d # Mount Nginx config.
            - /path/to/html/web:/var/www/html/web # Mount the Symfony html content
        networks:
            - docker-symfony-network

networks:
    docker-symfony-network:
        name: docker-symfony-network
        driver: bridge
    default:
        name: docker-symfony_default
```

Docker Run command:

```yaml
docker network create -d bridge docker-symfony-network \
docker network create docker-symfony_default \
docker run --net docker-symfony-network \
    --name symfony-8008 \
    --restart always \
    -p 8008:80 \
    -p 8043:443 \
    -v /path/to/html/nginx/8008:/etc/nginx/http.d \
    -v /path/to/html/web:/var/www/html/web \
    ghcr.io/kprimecity/docker-symfony:latest
```

### 3. Build the Docker Image & Run the Container

```bash
sudo docker compose up -d
```

>[!NOTE]
> This command will build the Docker image and run a container.

___

# 🌐 Usage

After running the container, access your application in your browser:

```
https://localhost:8043
```

You should see your index page rendered by the docker-symfony container.

<div align="center" width="100%">
    <img width="100%" height="auto" alt="preview" src="https://github.com/user-attachments/assets/ebcbc084-6769-4a7a-865d-e4f2d8df1ab1" />
</div>

<br/>

>[!NOTE]
> No need to start the `Symfony server` to access your project.

___

# 📝 Notes

* By default, Symfony SSL is used just in development; never use it in production.
* For more security propose or in production mode:
  * Put your project under a Reverse Proxy, you can use [Nginx Proxy Manager](https://nginxproxymanager.com/guide/),
  * Or change the SSL source in the `-v /path/to/html/nginx/8008` to make Nginx use your own SSL.
* Your project URLs: `http://xx.xx.xx.xx:8008` (`No Symfony ssl`) or `https://xx.xx.xx.xx:8043` (`With Symfony ssl`).
* Set `enable_native_lazy_objects: true` in `'%kernel.project_dir%/config/packages/doctrine.yaml'` to avoid this error: `Since doctrine/doctrine-bundle 2.16: Not setting "doctrine.orm.enable_native_lazy_objects" to true is deprecated.`

# 🤝 Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Commit your changes (`git commit -m "Add your feature"`).
5. Push to the branch (`git push origin feature/your-feature`).
6. Open a pull request.

___

# 📄 License

This project is licensed under the [GPL-3.0 License](https://github.com/kprimecity/docker-symfony/blob/main/LICENSE). See the [LICENSE](https://github.com/kprimecity/docker-symfony/blob/main/LICENSE) file for details.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/kprimecity/docker-symfony/blob/main/LICENSE)

___

# 🔎 Acknowledgments

* [PHP:fpm-alpine](https://hub.docker.com/layers/library/php/fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore)
* [Alpine Linux docker base image](https://hub.docker.com/_/alpine)
* [Symfony community](https://symfony.com/community)

___

# 🎯 Versions

* __[v3.0.0] - 09/28/2025__: Add the user and group `www-data` and grant them permission `775`. Add the `exif` (Exchangeable image information) extension.
* __[v2.1.0] - 09/16/2025__: Add the `PHP-OPcache` extension and configure the upload file size.
* __[v2.0.9] - 08/31/2025__: Combine all in one Docker Image.
* __[v1.0.0] - 08/09/2025__: Intial Release.
___

Take care! 💖 
