# symfony5-init
dockerized initial setup code of symfony 5 with Mongo DB an Nginx web server with PHP 7

Clone the repository then run
$ docker-compose build

After build completes run
$ docker-compose up -d

Application has exposed port 90 for accessing the sample site running inside the container.
In case you have port 90 not available please change it to desired port in docker-compose.yml file.

On you browser goto http://localhost:90

A sample controller with a page is provided for help. To access that page on 
your browser goto http://localhost:90/lucky/number/<any-number>
  e.g. http://localhost:90/lucky/number/893
  
