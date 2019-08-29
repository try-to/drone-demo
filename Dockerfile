FROM nginx:alpine

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY src/ /usr/share/nginx/html

EXPOSE 80

CMD sed -i "s/ContainerID: /ContainerID: "$(hostname)"/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"