FROM debian:bullseye

RUN apt-get update -y && \
	apt-get install nginx wget -y

COPY tools/setup.sh .

COPY conf/default /etc/nginx/sites-available/

RUN chmod +x setup.sh

ENTRYPOINT [ "./setup.sh" ]