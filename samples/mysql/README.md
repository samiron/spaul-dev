**Step 0: Pick your desired version of MySQL**

You can see available MySQL dockerhub tags from here https://hub.docker.com/_/mysql?tab=tags&page=1

**Step 1: Pull your preferred using `docker pull`, following are few examples**

* `docker pull mysql:latest`
* `docker pull mysql:8`
* `docker pull mysql:5`

**Step 2: Select your data drive**

The MySQL will run in a container but the data will remain on your host machines's disk. This way, when you turn off your computer or delete the container the data does not get lost. In our example, `E:/webserver/mysql/data` is our data directory.

**Step 3: Start the container**

Please note few things before running the command
* Make sure to change your data directory to the appropriate one.
* Set your desired root password.
* Use the tag name same as you used in Step 1 `mysql:latest` or `mysql:5` or `mysql:8`

`docker run --name dev.mysql -p 33067:3306 -v E:/webserver/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:latest`
