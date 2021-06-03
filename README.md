# Dev App Template

1) Find "app-template" in project directory and replace it with project name
2) Fill in IMAGE_REPOSITORY variable in Makefile
3) Add new url to hosts file
4) Launch reverse proxy that points to http server of this app and is on same shared docker network
5) Run docker-compose up -d