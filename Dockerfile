# UsedImage
FROM selenium/node-firefox-debug:latest

# Author
MAINTAINER jyun2shiken20020101@gmail.com

USER root

#
# package
#
RUN apt-get update \
 && apt-get -y install git vim net-tools python-dev \
 && wget https://bootstrap.pypa.io/get-pip.py \
 && python get-pip.py

#
# noVNC
#
RUN git clone https://github.com/kanaka/noVNC.git

RUN chmod +x /noVNC/utils/launch.sh
