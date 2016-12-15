# spaul-dev

### This is interesting for you if:

* Your development environment is windows
* You need a quick setup of php-mysql-webserver.
* You hate the fact that your git repository needs to be cloned in htdocs or www directory if you use wamp/xampp etc. Virtual host configuration in windows sucks.

###How this might be helpful?

If you follow the below steps, you will get full control over the dev env in your machine. "Full control" means

* `ngn start/stop/status`: Start/Stop/Status the nginx web server.
 * The sample nginx file assumes that your working projects are organized in E:/Work/$project_name/
 * You put your code in E:/Work/$project_name/code directory.
 * You want to access the project with a url like http://dev.$project_name
 * It uses php fast cgi to parse php requests.
* `php-fcgi start/stop/status`: Start/Stop/Status the php cgi interface that is used by nginx.

### Samples:

* php: _Nothing as of now._
* nginx: Contains a sample nginx file that I use.
