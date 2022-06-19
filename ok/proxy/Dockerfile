FROM ubuntu/nginx

RUN apt-get update
RUN apt-get install -y software-properties-common 
RUN apt-add-repository -r ppa:certbot/certbot -y
RUN apt-get update
RUN apt-get install -y \
    python-certbot-nginx

# RUN sudo certbot --nginx -n --redirect \ 
#     -d site9.beawebartisan.com \
#     -d site10.beawebartisan.com \
#     -m hi@rogeriopereira.dev