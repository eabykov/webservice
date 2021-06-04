### Flask web server
```shell
sudo docker build -t flask .
sudo docker images
sudo docker run -it -p 8080:80 IMAGE_ID
```
Open link http://127.0.0.1:8080 use username `admin` and password `secret`
> To enable Authentication again after success login clear the browser cache
> 
Used: https://docs.docker.com/language/python/build-images
