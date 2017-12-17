# Pull the latest node image from docker repository
docker pull node
# Pull the latest mongo image from docker repository
docker pull mongo
# Create a container out of the mongo image
docker run --name alcdb -p 27017:27017 mongo &

# Build an image from the Dockerfile in the project
docker build -t bootoo/usermanager .
# Create a container out of the docker image created
docker run --name devapp -p 3000:4200 bootoo/usermanager