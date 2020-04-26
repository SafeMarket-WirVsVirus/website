Build in main directory:
HUGO_DISABLELANGUAGES="en" hugo --gc --minify -b https://safemarket.info/
Build container:
cd ..
sudo docker build website -t website
Run Container
sudo docker run -d -p 80:80 -p 443:443 -v caddy_data:/data -v caddy_config:/config website
