FROM alpine:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install aws-shell && \

WORKDIR /aws
ENTRYPOINT ["aws-shell"]
