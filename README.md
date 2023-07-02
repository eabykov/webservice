```sh
docker build -t eabykov/webservice:1.0.0 .
```
```sh
docker run -it --rm -p 8080:8080 eabykov/webservice:1.0.0
```
Open link http://127.0.0.1:8080 use username `admin` and password `secret`
> To enable Authentication again after success login clear the browser cache
