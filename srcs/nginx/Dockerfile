FROM    debian:bullseye
RUN     apt update && apt install nginx openssl -y \
        && openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/ssl/certs/nginx-selfsigned.key \
        -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=KR/ST=GEYOUNG-GI-DO/L=SEOUL/O=42SEOUL/OU=CARDET/CN=youngcki.42.fr"
COPY    ./default /etc/nginx/sites-available/
EXPOSE  443
EXPOSE  9000
CMD     ["nginx", "-g", "daemon off;"]