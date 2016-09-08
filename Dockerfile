FROM python:2.7
MAINTAINER hello@menzo.io


RUN pip install dnspython && \
	rm -r ~/.cache/pip/ && \
	mkdir /root/subbrute && \
	mkdir /root/subbrute/log


ADD ["resolvers.txt", "subbrute.py", "subs_small.txt", "subs.txt", "/root/subbrute/"]

WORKDIR /root/subbrute

ENTRYPOINT ["python" , "/root/subbrute/subbrute.py"]