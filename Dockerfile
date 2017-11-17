FROM ubuntu:17.10
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/oxygen/1a/eclipse-jee-oxygen-1a-linux-gtk-x86_64.tar.gz -O ~/eclipse.tar.gz
RUN tar zxvf ~/eclipse.tar.gz
RUN rm ~/eclipse.tar.gz

RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y debconf-utils
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections
RUN apt-get install -y oracle-java8-installer

RUN apt-get install -y xorg openbox

VOLUME /root/repo
VOLUME /root/workspace

CMD /eclipse/eclipse