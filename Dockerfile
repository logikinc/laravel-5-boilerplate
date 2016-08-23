## BUILDING
##   (from project root directory)
##   $ docker build -t php-for-logikinc-laravel-5-boilerplate .
##
## RUNNING
##   $ docker run -p 9000:9000 php-for-logikinc-laravel-5-boilerplate
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:9000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/stacksmith-images/ubuntu:14.04-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="wg6gket" \
    STACKSMITH_STACK_NAME="PHP for logikinc/laravel-5-boilerplate" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install php-7.0.10-0 --checksum 5f2ec47fcfb2fec5197af6760c5053dd5dee8084d70a488fd5ea77bd4245c6b9

ENV PATH=/opt/bitnami/php/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# PHP base template
COPY . /app
WORKDIR /app

CMD ["php", "-a"]
