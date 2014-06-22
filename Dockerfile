FROM uggedal/alpinelinux:latest
RUN	apk update; apk upgrade
RUN	apk add unbound
ADD	unbound.conf /etc/unbound/unbound.conf
EXPOSE  53
ENTRYPOINT ["unbound"]
CMD ["-d"]
