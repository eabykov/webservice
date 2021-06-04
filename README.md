## Commands for deployment Flask application in Ubuntu
```shell
sudo apt update
sudo apt -y install python3 python3-dev gcc python3-flask python3-pip
```
## Commands for deployment Flask application
```shell
cd webservice
pip install -r requirements.txt
export FLASK_APP=webservice.py
export FLASK_ENV=development
flask run -p 5050
```
- username: `admin`
- password: `secret`

> To enable Authentication again after success login clear the browser cache.
