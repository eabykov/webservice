### Deployment Flask application

- username: `admin`
- password: `secret`
> To enable Authentication again after success login clear the browser cache.

### Docker build and run
```shell
sudo docker build -t flask .
sudo docker images
sudo docker run -it -p 8080:80 IMAGE_ID
```
