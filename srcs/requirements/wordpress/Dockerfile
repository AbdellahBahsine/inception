FROM debian:bullseye

RUN apt-get update -y && \
	apt-get install curl php-fpm php-mysql -y

COPY tools/setup.sh .

RUN chmod +x setup.sh

ENTRYPOINT [ "./setup.sh" ]