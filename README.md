<div class="Box-sc-g0xbh4-0 js-snippet-clipboard-copy-unpositioned DirectoryRichtextContent-module__SharedMarkdownContent--YORdJ" data-hpc="true">
  <article class="markdown-body entry-content container-lg" itemprop="text">
    <h1 dir="auto">docker-symfony 🚀 </h1>
    <p dir="auto">
      A Dockerized Symfony application using <strong>PHP 8.4</strong> (via <a href="https://hub.docker.com/layers/library/php/8.4-fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore" target="_blank" rel="nofollow">php:8.4-alpine </a>) and <strong>Nginx</strong> (via <a href="https://hub.docker.com/_/nginx" target="_blank" rel="nofollow">nginx:alpine </a>). This setup is ideal for local development, testing, and production environments. The container comes with: `bash`, `nano`, `curl` and `compose` packages, so you can use them directly in the container terminal. You can install <a href="https://symfony.com/download" target="_blank" rel="nofollow">Symfony CLI</a> and <a href="https://getcomposer.org/download/" target="_blank" rel="nofollow">Composer</a> in your host machine if you want to install some packages in your project.
    <div class="my-2"></div>
   <p dir="auto">
      <a href="https://symfony.com/" rel="nofollow" target="_blank">
         <img src="https://github.com/user-attachments/assets/2156229d-219d-4a22-a907-b7b0824fb184" alt="Docker + Symfony" style="max-width: 100%;" />
      </a>
   </p>
    <h1 dir="auto">Symfony inside PHP + Nginx Docker Images 🐳</h1>
    <p dir="auto">A lightweight Docker image combining <strong>PHP 8.4</strong> (<a href="https://hub.docker.com/layers/library/php/8.4-fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore" target="_blank" rel="nofollow">php:8.4-alpine</a>) and
        <strong>Nginx</strong> (<a href="https://hub.docker.com/_/nginx" target="_blank" rel="nofollow">nginx:alpine</a>) for running a Symfony (<a href="https://symfony.com/doc/current/setup.html" target="_blank" rel="nofollow">Latest Version</a>) PHP applications. Perfect for local development, testing, or production environments.
    </p>
    <p dir="auto">
      <ul dir="auto">
        <li class="text-start">
          <a href="https://nginx.org/" target="_blank" rel="nofollow">Nginx</a> is a simple and powerfull webserver used to serve your php files. The config files reside in <code>/etc/nginx/conf.d</code> for easy user customization.
        </li>
        <li class="text-start">
          <a href="https://www.php.net/" target="_blank" rel="nofollow">PHP</a> is a popular general-purpose scripting language that powers everything from your blog to the most popular websites.
        </li>
        <li class="text-start">
          <a href="https://symfony.com/doc/current/setup.html" target="_blank" rel="nofollow">Symfony</a> is a web application framework that makes it easy to develop robust and scalable web applications. The index file of your project resides in <code>/var/www/html/public</code>
        </li>
         <li class="text-start">
          <a href="https://hub.docker.com/_/alpine" target="_blank" rel="nofollow">Alpine Linux</a> is a lightweight and security-focused Linux distribution known for its minimal size. This small footprint makes the Alpine image a popular choice for creating compact and efficient Docker containers.
        </li>
      </ul>      
    </p>
    <p dir="auto">
      <div dir="auto" align="center">
      <a href="https://nginx.org/" target="_blank" rel="nofollow"><img width="auto" height="72" src="https://github.com/user-attachments/assets/21c79916-815d-485d-9d5a-8ef77d714954" alt="nginx" style="max-width: 100%;"></a>
      <a href="https://www.php.net/" target="_blank" rel="nofollow"><img width="auto" height="72" alt="php" src="https://github.com/user-attachments/assets/630de1e9-a335-4b5c-baf2-950955abf1f9" /></a>
      <a href="https://symfony.com" target="_blank" rel="nofollow"><img width="auto" height="72" alt="symfony" src="https://github.com/user-attachments/assets/976fe8bf-a538-4952-8f85-6783db65ba02" /></a>
      <a href="https://hub.docker.com" target="_blank" rel="nofollow"><img width="auto" height="72" alt="docker" src="https://github.com/user-attachments/assets/505db4dc-69f1-4098-b569-777a3ba57e3c" /></a>
        </div>
    </p>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📦 Features</h2>
    <ul dir="auto" class="">
        <li class="text-start "><strong>Lightweight</strong>: Built on Alpine Linux for minimal size.</li>
        <li class="text-start "><strong>PHP 8.4</strong>: Full PHP 8.4 support with FPM (FastCGI Process Manager).</li>
        <li class="text-start "><strong>Nginx</strong>: High-performance web server with reverse proxy capabilities.
        </li>
      <li class="text-start "><strong>Symfony Ready</strong>: Out-of-the-box support for Symfony apps in <code class="codespan cursor-pointer">/var/www/html</code>.</li>
        <li class="text-start "><strong>Easy Configuration</strong>: Customizable Nginx and PHP-FPM settings.</li>
        <li class="text-start "><strong>Ready to Use</strong>: Out-of-the-box support for PHP applications.</li>
    </ul>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📁Supported Architectures</h2>
    <p dir="auto">The architectures supported by this image are:</p>
    <markdown-accessiblity-table data-catalyst="">
      <table>
        <thead>
            <tr>
                <th align="center">Architecture</th>
                <th align="center">Available</th>
                <th>Tag</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td align="center">x86-64</td>
                <td align="center">✅</td>
                <td>amd64-&lt;version tag&gt;</td>
            </tr>
            <tr>
                <td align="center">arm64</td>
                <td align="center">✅</td>
                <td>arm64v8-&lt;version tag&gt;</td>
            </tr>
        </tbody>
    </table>
    </markdown-accessiblity-table>
    <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-12" class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🚀 Getting Started </h2>
    <p dir="auto">To help you get started creating a container from this image you can either use docker-compose or the docker cli.</p>
    <ol dir="auto">
      <li>If not already done, <a href="https://docs.docker.com/compose/install/" rel="nofollow">install Docker Compose</a> (v2.10+)</li>
      <li>Run <code>docker compose build --pull --no-cache</code> to build fresh images</li>
      <li>Run <code>docker compose up --wait</code> to set up and start a fresh Symfony project</li>
      <li>Open <code>https://localhost</code> in your favorite web browser and <a href="https://stackoverflow.com/a/15076602/1352334" rel="nofollow">accept the auto-generated TLS certificate</a></li>
      <li>Run <code>docker compose down --remove-orphans</code> to stop the Docker containers.</li>
    </ol>
    <h3 dir="auto">1. Clone the Repository</h3>
    <div class="highlight highlight-source-yaml notranslate position-relative overflow-auto" dir="auto">
        <pre>
git clone https://github.com/kprimecity/docker-symfony.git
cd docker-symfony</pre>
        <div class="my-2"></div>
        <h3 dir="auto">2. Set your configuration </h3>
      <blockquote dir="auto">
        <p dir="auto">⚠️ Edit the docker compose file before run it to ajust your container as you need.</p>
    </blockquote>
<pre>
name: "docker-symfony"
services:
  docker-symfony-nginx:
    build:
      context: ./nginx
      dockerfile: Dockerfile
    image: docker-symfony-nginx:latest
    container_name: docker-symfony-nginx
    restart: unless-stopped
    environment:
      - PGID=1000
      - PUID=1000
      - PHP_SERVICE_NAME=docker-symfony-php
      - NGINX_SERVER_NAME=localhost # Set your host name
    ports:
      - "8000:80"
      #- "443:443" # Optional
    volumes:
      - /path/to/web/conf:/etc/nginx/conf.d # Mount Nginx config
    depends_on:
      - docker-symfony-php
    networks:
      - docker-symfony-network
  docker-symfony-php:
    build:
      context: ./php
      dockerfile: Dockerfile
    image: docker-symfony-php:latest
    container_name: docker-symfony-php
    restart: unless-stopped
    environment:
      - PGID=1000
      - PUID=1000
    volumes:
      - /path/to/web/html:/var/www/html # Mount html content
    networks:
      - docker-symfony-network
networks:
    docker-symfony-network:
        name: docker-symfony-network
        driver: bridge
    default:
        name: docker-symfony_default</pre>
        <div class="my-2"></div>
        <h3 dir="auto">3. Build the Docker Image & Run the Container</h3>
        <pre>sudo docker compose up -d</pre>
    </div>
    <div class="my-2"></div>
    <blockquote dir="auto">
        <p dir="auto">⚠️ This command will build all Docker images and run all containers.</p>
    </blockquote>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🛠️ Configuration </h2>
    <h3 dir="auto">Nginx Configuration </h3>
    <p dir="auto">Place your custom Nginx config files in the <code class="codespan cursor-pointer">nginx/</code>
        directory. For example, <code class="codespan cursor-pointer">default.conf</code>: </p>
    <div class="my-2"></div>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🌐 Usage </h2>
    <p dir="auto">After running the container, access your application in your browser: </p>
    <div class="my-2"></div>
    <pre>http://localhost</pre>
    <div class="my-2"></div>
    <p dir="auto">You should see your PHP application (e.g., <code class="codespan cursor-pointer">index.php</code>)
        rendered by Nginx and PHP-FPM. </p>
     </p>
    <p></p><blockquote dir="auto">
        <p dir="auto">⚠️ No need to start the <code class="codespan cursor-pointer">Symfony server</code> to access your project.</p>
    </blockquote></p>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🧪 Customization </h2>
    <h3 dir="auto">Environment Variables </h3>
    <p dir="auto">You can override default settings by setting environment variables: </p>
    <div class="my-2"></div>
    <pre>docker run -e PHP_UPLOAD_MAX_FILESIZE=50M</pre>
    <div class="my-2"></div>
    <h3 dir="auto">Volume Mounts </h3>
    <p dir="auto">Mount your project files and configs: </p>
    <div class="my-2"></div>
    <pre>
-v $(pwd)/src:/var/www/html \
-v $(pwd)/nginx:/etc/nginx/conf.d \
-v $(pwd)/php:/etc/php8.4/fpm
</pre>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📝 Notes </h2>
    <ul dir="auto" class="">
        <li class="text-start ">
            <p><strong>Alpine Linux</strong>: This image uses Alpine's package manager (<code
                    class="codespan cursor-pointer">apk</code>) for minimal size. </p>
        </li>
        <li class="text-start ">
            <p><strong>PHP Extensions</strong>: If you need additional PHP extensions (e.g., <code
                    class="codespan cursor-pointer">pdo</code>, <code class="codespan cursor-pointer">mysql</code>),
                install them in your Dockerfile: </p>
            <div class="my-2"></div>
            <code>RUN apk add --no-cache php8.4-pdo php8.4-mysql</code>
        </li>
    </ul>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🤝 Contributing </h2>
    <ol start="1" dir="auto">
        <li class="text-start"> Fork the repository.</li>
        <li class="text-start"> Create a new branch (<code
                class="codespan cursor-pointer">git checkout -b feature/your-feature</code>).</li>
        <li class="text-start"> Make your changes.</li>
        <li class="text-start"> Commit your changes (<code
                class="codespan cursor-pointer">git commit -m "Add your feature"</code>).</li>
        <li class="text-start"> Push to the branch (<code
                class="codespan cursor-pointer">git push origin feature/your-feature</code>).</li>
        <li class="text-start"> Open a pull request.</li>
    </ol>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📄 License </h2>
    <p dir="auto">This project is licensed under the <a href="LICENSE" target="_blank" rel="nofollow">GPL-3.0 License</a>.
        See the <a href="LICENSE" target="_blank" rel="nofollow">LICENSE </a> file for details. </p>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📌 Acknowledgments </h2>
    <ul dir="auto" class="">
        <li class="text-start "><a href="https://hub.docker.com/layers/library/php/8.4-fpm-alpine/images/sha256-fcc2fccfa511b898a78e97e8a978fa41d54242dd54b729f9f9b76ef1398a75ed?context=explore" target="_blank" rel="nofollow">php:8.4-alpine
            </a></li>
        <li class="text-start "><a href="https://hub.docker.com/_/nginx" target="_blank" rel="nofollow">nginx:alpine
            </a></li>
      <li class="text-start "><a href="https://hub.docker.com/_/alpine" target="_blank" rel="nofollow">Alpine Linux docker base image
            </a></li>
        <li class="text-start "><a href="https://symfony.com/community" target="_blank" rel="nofollow">Symfony community</a></li>
    </ul>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <p dir="auto">Take care! 💖 </p>
  </article>
</div>
