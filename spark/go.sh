docker pull masseranolabs/nodeodm-proxy
docker stop $(docker ps -aq) && docker rm $(docker ps -aq)
docker run -d -p 3000:3000 --restart always -v /root/data:/var/www/data masseranolabs/nodeodm-proxy --downloads-from-s3 https://wln.nyc3.digitaloceanspaces.com -c lightning
