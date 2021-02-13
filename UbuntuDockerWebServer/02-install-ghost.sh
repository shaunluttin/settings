sudo mkdir -p /var/www/bigfont-blog

# Create and inpect a named volume.
# https://docs.docker.com/engine/reference/commandline/volume_create/
docker volume create --name bigfont-blog-content --driver local
docker volume inspect bigfont-blog-content

# Start Ghost exposed at http://ipaddress:80
# See https://hub.docker.com/_/ghost/
# TODO Set up NGINX as a proxy.
docker run -d -e url=http://52.228.0.152:80 -p 80:2368 -v bigfont-blog-content:/var/lib/ghost/content --name bigfont-blog ghost:3-alpine 

# First-time Set Up
# 1. Go to http://ipaddress:80/ghost
# 2. Create your account
