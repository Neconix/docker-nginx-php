# Nginx, Php, Mysql docker stack (minimal)

This is a minimal docker stack for a web application development with PHP7+Xdebug, MYSQL 8, NGINX.

## Quickstart
1. Run
    ```bash
    ./build-images.sh
    ./deploy-stack.sh mystack
    ```
    or
    ```bash
    ./build-images.sh
    docker stack deploy -c docker-compose.yml mystack
    ```
2. Put your application to _www_ dir.
3. Go to _localhost:8080_, and check phpinfo() output from a default _index.php_ or your web app.
4. You may find MySQL db, user, pass in a _docker-compose.yml_ file.