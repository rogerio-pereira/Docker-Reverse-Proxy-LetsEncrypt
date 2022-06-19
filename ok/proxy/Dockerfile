FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y software-properties-common 
RUN apt-add-repository -r ppa:certbot/certbot -y
RUN apt-get update
RUN apt-get install -y certbot python3-certbot-nginx

RUN sudo certbot --nginx -n --redirect --agrees-to \ 
    -d site7.beawebartisan.com \
    -d www.site7.beawebartisan.com \
    -d site8.beawebartisan.com \
    -d www.site8.beawebartisan.com \
    -m hi@rogeriopereira.dev

ENTRYPOINT ["tail", "-f", "/dev/null"]