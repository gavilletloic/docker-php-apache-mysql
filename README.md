# PHP Apache MySQL

Docker must be installed on your machine. Please note that on Linux OS, you must also install docker and docker-compose.

How to use it ?

If you install your project under C:\dev

Do, "cd C:\dev" in your windows console. Then "docker-compose up" to run your containers.

Try 127.0.0.1 in your browser, you should see a list of countries (if you upload the database_dump.sql).
Try 127.0.0.1/phpinfo.php to see the phpinfo

database_dump.sql, index.php and phpinfo.php are here as example. You can replace them in your project. In index.php, you can see how to connect to the database, especially for the server name.

Useful commands :
- docker-compose up
- docker-compose stop
- docker-compose build
- docker ps
- docker logs <container-name> ==> docker logs apache_container.
