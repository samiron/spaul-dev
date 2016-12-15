docker pull mysql:latest
docker run --name dev.mysql -p 33067:3306 -v E:/webserver/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:latest

Above command does following things
    link the container port 3306 with docker host port 33067
    use E:/webserver/mysql/data as the data directory of the mysql which is mounted in /var/lib/mysql  in container
    root password is "root"