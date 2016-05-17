FROM alpine:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install --upgrade pip
	pip install aws-shell 

WORKDIR /aws
ENTRYPOINT ["aws-shell"]
