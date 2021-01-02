FROM softsam/android-19

MAINTAINER wojtkow

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean && \
    apt-get autoclean

EXPOSE 7474
EXPOSE 5555
COPY RMBridge_1.3.3.apk RMBridge_1.3.3.apk
COPY install.sh ./install.sh
RUN chmod +x ./install.sh
CMD ["./install.sh"]
