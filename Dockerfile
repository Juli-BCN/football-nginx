# Image and Labels
FROM nginx:alpine
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Environment Variables
ENV TZ=Europe/Dublin
ENV SERVICE="football"

# Copy files for the new site
COPY src/ /usr/share/nginx/html
COPY conf/* /etc/nginx/conf.d
RUN sed -i "s/SERVICE/${SERVICE} /g" /etc/nginx/conf.d/default.conf

# Port for site
EXPOSE 80
