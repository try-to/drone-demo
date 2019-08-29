FROM nginx:alpine

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY src/ /var/www/

EXPOSE 80