FROM debian:bullseye
RUN apt update && apt install mariadb-server -y
EXPOSE 3306
COPY setting.sh /
RUN chmod 777 setting.sh && ./setting.sh
CMD [ "tail", "-f" ]