FROM nginx:alpine

RUN add-apt-repository ppa:certbot/certbot -y
RUN apt-get update
RUN apt-get update && apt-get install -y \
    python-certbot-nginx

# RUN sudo certbot --nginx -n --redirect \ 
#     -d site9.beawebartisan.com \
#     -d site10.beawebartisan.com \
#     -m hi@rogeriopereira.dev