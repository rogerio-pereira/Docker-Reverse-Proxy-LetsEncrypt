FROM ubuntu

RUN sudo add-apt-repository ppa:certbot/certbot -y
RUN sudo apt-get update
RUN sudo apt-get update && apt-get install -y \
    python-certbot-nginx

# RUN sudo certbot --nginx -n --redirect \ 
#     -d site9.beawebartisan.com \
#     -d site10.beawebartisan.com \
#     -m hi@rogeriopereira.dev