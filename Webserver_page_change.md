#index.html
<h1>Hello</h1>

#Dockerfile

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html





#For apache2
#index.html
<h1>Hello</h1>

#Dockerfile

FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs/index.html




#For enter container 
docker exec -it <container_name> /bin/bash



#For Jenkins ExcuteShell
docker build -t <image.name> .
docker run -d -p 8080:80 --name <container_name>  <image.name>


