all :
	docker compose up -d

nginx :
	docker build -t hi ./srcs/nginx/
	docker run --name test -d --rm -p 443:443 hi

php :
	docker build -t php ./srcs/wordpress/
	docker run --name php --rm -it -p php /bin/bash

clean :
	-docker container ps --all | awk '{print $$1}' | grep -v CONTAINER | xargs docker container rm -f
	-docker images | awk '{print $$1}' | grep -v "REPOSITORY" | tr '\n' ' ' | xargs docker image rm
	-docker volume ls | awk '{print $$2}' | grep -v "VOLUME" | tr '\n' ' ' | xargs docker volume rm

fclean :
	docker compose down