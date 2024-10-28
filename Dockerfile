FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ARG VERSION=8.9-2

WORKDIR /app

COPY install .

RUN apt update && \
    apt install -qq -y sudo expect wget && \
    wget "https://ragtech.com.br/Softwares_download/supervise-${VERSION}.sh" && \
    mv "supervise-${VERSION}.sh" supervise.sh && \
    chmod +x install supervise.sh && TERM=xterm ./install && \

    # Clean
    SUDO_FORCE_REMOVE=yes apt purge -qq -y sudo expect wget && \
    rm -rf "supervise.sh" install && \
    apt clean autoclean && apt autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

EXPOSE 4470

RUN apt update && \
    apt install -qq -y udev && \

    # Clean
    apt clean autoclean && apt autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

CMD /opt/supervise/supsvc
