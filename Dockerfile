FROM nginx:1.16-alpine

# allows host to ssh into container
RUN apk add bash
# adds curl to test whether nginx is working properly or not
RUN apk add curl

# copies nginx config
COPY conf.d /etc/nginx/conf.d
# copies html content
COPY html /usr/share/nginx/html

# starts nginx as a foreground process
CMD ["nginx", "-g", "daemon off;"]