FROM nginx:alpine

RUN sudo add-apt-repository ppa:certbot/certbot -y
RUN sudo apt-get update
RUN apt-get update && apt-get install -y \
    python-certbot-nginx

RUN certbot --nginx -n --redirect \ 
    -d beawebartisan.com \
    -d site1.beawebartisan.com \
    -d site2.beawebartisan.com \
    -m hi@rogeriopereira.dev