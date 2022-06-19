FROM ubuntu/nginx

RUN apt-get update
RUN apt-get install -y software-properties-common nginx
RUN apt-add-repository -r ppa:certbot/certbot -y
RUN apt-get update
RUN apt-get install -y certbot python3-certbot-nginx

#remove default config
RUN rm -fr /etc/nginx/sites-available/default
RUN rm -fr /etc/nginx/sites-enabled/default

RUN service nginx restart

# ENTRYPOINT ["tail", "-f", "/dev/null"]