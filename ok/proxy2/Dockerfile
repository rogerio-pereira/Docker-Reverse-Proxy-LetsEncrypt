FROM ubuntu/nginx

RUN apt-get update
RUN apt-get install -y software-properties-common nginx
RUN apt-add-repository -r ppa:certbot/certbot -y
RUN apt-get update
RUN apt-get install -y certbot python3-certbot-nginx

# COPY docker/nginx/config/* /etc/nginx/sites-available/
# RUN ln -s /etc/nginx/sites-available/* /etc/nginx/sites-enabled/

# RUN sudo certbot --nginx -n --redirect --agree-to \ 
#     -d beawebartisan.com \
#     -d site7.beawebartisan.com \
#     -d site8.beawebartisan.com \
#     -m hi@rogeriopereira.dev

ENTRYPOINT ["tail", "-f", "/dev/null"]