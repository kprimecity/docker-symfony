# docker-symfony 🎁
A Dockerized Symfony application using PHP 8.4 (via [php:8.4-alpine](https://hub.docker.com/layers/library/php/8.4-fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore)) and Nginx (via [nginx:alpine](https://hub.docker.com/_/nginx)). This setup is ideal for local development, testing, and production environments. The container comes with: `bash`, `nano`, `curl` and `compose` packages, so you can use them directly in the container terminal. You can install [Symfony CLI](https://symfony.com/download) and [Composer](https://hub.docker.com/_/nginx) in your host machine if you want to install some packages in your project.

[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=kprimecity.io&message=GitHub&logo=github)](https://github.com/kprimecity "view the source for all of our repositories.")
[![GitHub Stars](https://img.shields.io/github/stars/kprimecity/docker-symfony.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/kprimecity/docker-symfony)
[![GitHub Release](https://img.shields.io/github/release/kprimecity/docker-symfony.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/kprimecity/docker-symfony/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=kprimecity.io&message=GitHub%20Package&logo=github)](https://github.com/kprimecity/docker-symfony/packages)
[![Docker Pulls](https://img.shields.io/docker/pulls/kprimecity/docker-symfony-nginx.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/kprimecity/docker-symfony-nginx)
[![Docker Stars](https://img.shields.io/docker/stars/kprimecity/docker-symfony-nginx.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/kprimecity/docker-symfony-nginx)

<div align="center" width="100%">
    <img width="100%" height="auto" alt="docker-symfony" src="https://github.com/user-attachments/assets/c52e6e0c-6097-4f8e-9fb2-57b439e6f5c7" />
</div>

___

# Symfony inside PHP + Nginx Docker Images 🐳

A lightweight Docker image combining PHP 8.4 ([php:8.4-alpine](https://hub.docker.com/layers/library/php/8.4-fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore)) and Nginx ([nginx:alpine](https://hub.docker.com/_/nginx)) for running a latest version of [Symfony](https://symfony.com/doc/current/setup.html) PHP applications. Perfect for local development, testing, or production environments.

* [Nginx](https://nginx.org) is a simple and powerfull webserver used to serve your php files. The config files reside in `/etc/nginx/conf.d` for easy user customization.
* [PHP](https://www.php.net) is a popular general-purpose scripting language that powers everything from your blog to the most popular websites.
* [Symfony](https://symfony.com/doc/current/setup.html) is a web application framework that makes it easy to develop robust and scalable web applications. The index file of your project resides in `/var/www/html/public`
* [Alpine Linux](https://hub.docker.com/_/alpine) is a lightweight and security-focused Linux distribution known for its minimal size. This small footprint makes the Alpine image a popular choice for creating compact and efficient Docker containers.

<br/>

<div align="center" width="100%">

[<img width="auto" height="72" alt="nginx" align="center" src="https://github.com/user-attachments/assets/76031613-001a-41ec-95b6-dd93f6b2c81a" />](https://nginx.org/)
[<img width="auto" height="72" alt="php" align="center" src="https://github.com/user-attachments/assets/630de1e9-a335-4b5c-baf2-950955abf1f9" />](https://www.php.net/)
[<img width="auto" height="72" alt="symfony" align="center" src="https://github.com/user-attachments/assets/976fe8bf-a538-4952-8f85-6783db65ba02" />](https://symfony.com/)
[<img width="auto" height="72" alt="docker" align="center" src="https://github.com/user-attachments/assets/505db4dc-69f1-4098-b569-777a3ba57e3c" />](https://hub.docker.com/)

</div>

___

# 📦 Features

* __Lightweight__: Built on Alpine Linux for minimal size.
* __PHP 8.4__: Full PHP 8.4 support with FPM (FastCGI Process Manager).
* __Nginx__: High-performance web server with reverse proxy capabilities.
* __Symfony Ready__: Out-of-the-box support for Symfony apps in `/var/www/html`.
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
>`PHP_SERVICE_NAME` must be the same as` php service name`. You must use `https://...` to access your project.

You can also put your project under a Reverse Proxy.

| 📌 Ports | 📚 Description |
| :----: | :----: |
| `8008` | Bind `80` port, but you need to use `https://xx.xx.xx.xx:8008` |
| `8043` | Bind `443` port, but it's optional |
| __🏷️ Environment__ | __📚 Description__ |
| `PGID` | Process Group ID, Linux command: `id` |
| `PUID` | Process User ID, Linux command: `id` |
| `PHP_SERVICE_NAME` |His value must be the same as the `php service name` in your Docker Compose file |
| __📁 Volume__ | __📚 Description__ |
| `./path/to/web/conf` | Mount Nginx configuration folder: `/etc/nginx/conf.d` |
| `./path/to/web/html` | Mount symfony framework folder: `/var/www/html` |

___

# 🚀 Getting Started

To help you get started creating a container from this image you can either use docker-compose or the docker cli. The easy way is to follow this steps:

1. Clone or download the Repository: `git clone https://github.com/kprimecity/docker-symfony.git`,
2. Go in the folder: `cd docker-symfony`
3. Modify the docker-compose file according to your needs: `sudo nano docker-compose.yaml`,
4. Run `sudo docker compose up --wait -d` to set up and start a fresh Symfony project,
5. Wait a few minutes for the Symfony framework to be downloaded, you can check the `php container log` to see the progress,
6. Open `https://localhost:8008` in your favorite web browser to access your project,
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
>Modify the Docker Compose file before running it; so you can adjust your containers (Nginx and PHP) according to your needs. Run the containers using: `sudo docker compose up --wait -d`. Wait a few minutes for the Symfony framework to be downloaded.

Docker compose file:

```yaml
name: docker-symfony
services:
    nginx-8008: # Your Nginx service name
        image: kprimecity/docker-symfony-nginx:latest
        container_name: docker-symfony-nginx-8008 # Your Container name
        restart: unless-stopped
        environment:
            - PGID=1000
            - PUID=1000
            - PHP_SERVICE_NAME=php-8008 # This Value MUST be as the php service name bellow
        ports:
            - 8008:80 # You still need to use https://xx.xx.xx.xx:8008 even if you bind 80 port
            - 8043:443 # Optional
        volumes:
            - ./path/to/web/conf/8008:/etc/nginx/conf.d # Mount Nginx config
        depends_on:
            - php-8008 # Same as PHP_SERVICE_NAME environment
        networks:
            - docker-symfony-network

    php-8008: # PHP service name: Same as PHP_SERVICE_NAME environment ABOVE
        image: kprimecity/docker-symfony-php:latest
        container_name: docker-symfony-php-8008 # Your Container name
        restart: unless-stopped
        environment:
            - PGID=1000
            - PUID=1000
        volumes:
            - ./path/to/web/html:/var/www/html # Mount html content to manage your project locally
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
  --name docker-symfony-nginx \
  --restart unless-stopped \
  -e PGID=1000 \
  -e PUID=1000 \
  -e PHP_SERVICE_NAME=docker-symfony-php \
  -p 8008:80 \
  -p 8043:443 \
  -v ./path/to/web/conf:/etc/nginx/conf.d \
  docker-symfony-nginx:latest
  docker run --net docker-symfony-network \
  --name docker-symfony-php \
  --restart unless-stopped \
  -e PGID=1000 \
  -e PUID=1000 \
  -v ./path/to/web/html:/var/www/html \
  docker-symfony-php:latest
```

### 3. Build the Docker Image & Run the Container

```bash
sudo docker compose up --wait -d
```

>[!NOTE]
> This command will build all Docker images and run all containers.

___

# 🌐 Usage

After running the container, access your application in your browser:

```
https://localhost:8008
```

You should see your index page rendered by Nginx and PHP-FPM.

<div align="center" width="100%">
    <img width="100%" height="auto" alt="preview" src="https://github.com/user-attachments/assets/8825d37e-6847-423b-9f23-f5775a2c33c4" />
</div>

<br/>

>[!NOTE]
> No need to start the `Symfony server` to access your project.

___

# 📝 Notes

* By default, Symfony SSL is used just in development; never use it in production.
* For more security propose or in production mode:
  * Put your project under a Reverse Proxy, using [Nginx Proxy Manager](https://nginxproxymanager.com/guide/)
  * Or change the SSL source in the `nginx server configuration` to make Nginx use your own SSL.
* The Docker Compose Environment (`PHP_SERVICE_NAME`) value must be as the `php container service name`.
* Your project URLs: `https://xx.xx.xx.xx:8008` or `https://xx.xx.xx.xx:8043`: https only.

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

* [PHP:8.4-alpine](https://hub.docker.com/layers/library/php/8.4-fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore)
* [Nginx:alpine](https://hub.docker.com/_/nginx)
* [Alpine Linux docker base image](https://hub.docker.com/_/alpine)
* [Symfony community](https://symfony.com/community)

___

Take care! 💖 
