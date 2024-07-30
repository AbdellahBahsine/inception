# Inception

The project is part of 1337 cursus and is an introduction to Docker and containers. The goal of this project is to create an infrastructure that includes Nginx, Wordpress and MariaDB. Each one of them is running in an isolated container, and linked using Docker netowrk. While MariaDB and Wordpress data is stored using Docker volumes.

I used Nginx as a server to handle upcoming requests, Wordpress as a content management system, and MariaDB to store users data in the database. When the user sends a request Ngnix goes to the folder where Wordpress files are and search for the requested file and returns the requested file in case it exists.

## What is Docker and containers?
Docker is a platform that helps us create an isolated environment from the host operating system where we can run our app without interfering with the host os. A common problem developers encounter when they are working on an application is the conflict that occur because each one of them is working on a different operating system with different library versions. Containers solved this issue by creating an isolated place inside the host os where they can put their app configuration and libraries needed for the app. By doing this developers can work on the same containers and won't have conflicts.
