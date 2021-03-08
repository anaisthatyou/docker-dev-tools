FROM alpine:3.13

LABEL version='0.1.0'
LABEL maintainer='Ana Harrison <ana@harrison.io>'
LABEL description='Image for debugging docker containers'

LABEL org.opencontainers.image.created='2019-12-01'       
LABEL org.opencontainers.image.authors='author@example.org'
LABEL org.opencontainers.image.url='https://github.com/disklosr/example'
LABEL org.opencontainers.image.documentation='https://github.com/disklosr/example/docs'
LABEL org.opencontainers.image.version='0.0.1'
LABEL org.opencontainers.image.vendor='disklosr'
LABEL org.opencontainers.image.title='Some title'
LABEL org.opencontainers.image.description='Some description here'

RUN echo 'https://dl-cdn.alpinelinux.org/alpine/v3.13/main/' >> /etc/apk/repositories

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git go bash bash-completion ncurses vim tmux jq nodejs\
    # network
    docker-cli bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep openldap-clients\
    # certificates
    ca-certificates openssl \
    # processes/io
    htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv 

ENTRYPOINT ["/bin/bash"]
