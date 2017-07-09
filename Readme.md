# Build the Image

`git clone https://github.com/Citrix-TechSpecialist/vip-crawler.git`
`docker build -t vip-crawler .`

# Run the Docker Container

Container input is a `.csv` file of a list of base URLs or VIPs to continually scrape randomly to a random depth. See [`vips.csv`](vips.csv) in this repository as an example

```
docker run \
--name crawler \
-dt \
-v /input/vips.csv:/var/vip-input/vips.csv \
vip-crawler
``` 
# Trouble shooting issues

To see logs or live transaction of the container by entering the following command: 

`docker logs -f crawler`