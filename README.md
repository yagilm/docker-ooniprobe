This is a docker image that uses alpine edge to start ooni-probe fast and easy.

ooniprobe: a network interference detection tool official github repository:
https://github.com/TheTorProject/ooni-probe

# Getting the Dockerfile
`git clone git@github.com:yagilm/docker-ooniprobe.git`

# Building the image
`docker build -t ooniprobe .`

# Running the image
`docker run -dt -p 8080:8080 --name ooniprobe ooniprobe`

# Web interface for ooniprobe
Open your favorite browser and go to http://localhost:8080

# Stop ooniprobe
Just stop the container
`docker stop ooniprobe`


