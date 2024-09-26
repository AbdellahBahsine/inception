# Project Introduction

In this project, I undertook the challenge of building a small-scale infrastructure using Docker, focusing on creating a multi-service application within a Virtual Machine environment. The primary objective was to deepen my understanding of containerization and orchestration through Docker Compose, while adhering to specific requirements that ensured a solid grasp of best practices in Docker file management and service configuration.

The project involved structuring the application with various services, including NGINX for web serving, WordPress with PHP-FPM for dynamic content, and MariaDB as the database backend. Each service was encapsulated within its own Docker container, and I was tasked with writing custom Dockerfiles for each service, eschewing pre-built images to foster a deeper understanding of Docker’s capabilities.

To manage the build and deployment process efficiently, I created a Makefile that orchestrated the setup, building Docker images and configuring networking between the containers as specified. This included implementing persistent volumes for the WordPress database and website files, ensuring data integrity across container restarts.

Throughout the project, I delved into documentation and resources on Docker, which proved invaluable for overcoming challenges and refining my approach. This experience not only solidified my understanding of Docker and container orchestration but also equipped me with practical skills in system design and network configuration, laying a strong foundation for future projects in software development and DevOps.

Feel free to explore the source files in the srcs directory and the Makefile at the root of the project to see the structure and implementation in detail!
