FROM heroku/cedar:14

RUN sed -i '/^deb http:\/\/apt\.postgresql\.org\/*/d' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y curl wget ca-certificates
RUN apt-get install -y gcc g++
RUN apt-get install -y make automake autoconf
RUN apt-get install -y libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3
RUN apt-get install -y libreadline-dev libncurses-dev libssl-dev libssh-dev
RUN apt-get install -y libxslt-dev libffi-dev libtool unixodbc-dev
RUN apt-get install -y fop xsltproc

RUN mkdir -p /home/build/out
WORKDIR /home/build

COPY build-otp.sh /home/build/build.sh
RUN chmod +x /home/build/build.sh
CMD ./build.sh
