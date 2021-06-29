FROM kong

USER root
RUN apk update
RUN apk add sudo
COPY kong.yml /etc/kong/kong.yml
RUN sudo cp /etc/kong/kong.conf.default /etc/kong/kong.conf
ENV KONG_DATABASE=off
EXPOSE 8000 8443 8001 8444 

