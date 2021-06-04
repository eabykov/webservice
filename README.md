## Deployment Flask application in Ubuntu
1. Install requirements
```shell
cd webservice
sudo apt update
sudo apt -y install python3 python3-dev gcc python3-flask python3-pip
pip install -r requirements.txt
```
2. Run Flask application
```shell
export FLASK_APP=webservice.py
export FLASK_ENV=development
flask run -p 5050
```
- username: `admin`
- password: `secret`

> To enable Authentication again after success login clear the browser cache.
