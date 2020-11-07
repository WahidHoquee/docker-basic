# Using an existing docker image as a baseImage/It is like installing an operating system
# While Executing it first checks local cache, then download from hub. It also have file system snapshot & default startup command

# Steps: 1. Creates a temp container 2. Update by executing that steps command 3. Takes the snapshot of the updated container
# 4. Remove that temporary container. 4. Next Step 5. Based on the previous snapshot new temp container created.

# Order of Code line matters in case of performance. Cause it pulls cache container by container. If the cached state of the container and present state is not similar,then from that point it will start pulling from docker hub.

FROM alpine

# Download and install a dependency//To install software(chrome) under that opertaing system
# apk is like package manager of alphine
RUN apk add --update gcc
RUN apk add --update redis

#Tell the image what to do when it starts as a container// Setting up default startup command
#When we do docker run image_id => The following command will be executed
CMD ["redis-server"]