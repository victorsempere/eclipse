FROM visv/ubuntux11:14.04
RUN wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/oxygen/1a/eclipse-jee-oxygen-1a-linux-gtk-x86_64.tar.gz -O ~/eclipse.tar.gz
RUN tar zxvf ~/eclipse.tar.gz
RUN rm ~/eclipse.tar.gz

RUN chmod +x /root/eclipse/bin/eclipse.sh

VOLUME /root/repo
VOLUME /root/workspace

WORKDIR /root/eclipse/bin
CMD ./eclipse.sh