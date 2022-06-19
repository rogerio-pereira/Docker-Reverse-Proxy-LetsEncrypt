FROM ubuntu/nginx

RUN apt-get update
RUN apt-get install -y software-properties-common nginx
RUN apt-add-repository -r ppa:certbot/certbot -y
RUN apt-get update
RUN apt-get install -y certbot python3-certbot-nginx

#remove default config
RUN rm -fr /etc/nginx/sites-available/default
RUN rm -fr /etc/nginx/sites-enabled/default

RUN certbot --nginx -n --redirect --agree-to \ 
    -d beawebartisan.com \
    -d site7.beawebartisan.com \
    -d site8.beawebartisan.com \
    -m hi@rogeriopereira.dev

RUN service nginx restart

# ENTRYPOINT ["tail", "-f", "/dev/null"]