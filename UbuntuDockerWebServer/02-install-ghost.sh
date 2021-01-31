
# Expose Ghost at http://ipaddress:80
# https://hub.docker.com/_/ghost/

docker run -d -e url=http://localhost:80 -p 80:2368 --name bigfont-blog ghost:3-alpine

