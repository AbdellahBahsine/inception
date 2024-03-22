up:
	sudo mkdir -p /home/abahsine/data/wordpress
	sudo mkdir -p /home/abahsine/data/mariadb
	cd srcs && docker-compose up --build

clean:
	cd srcs && docker-compose down
	docker image prune -fa
	docker volume rm $(shell docker volume ls -q)
	sudo rm -rf /home/abahsine/data/

re: clean up