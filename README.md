# WebService
## Test Web Page with Basic Authentication written on Python using Flask
### Show the Last Commit, Flask app PID, CPU and MEM usage

username: **admin**

password: **secret**

**Note:** To enable Authentication again after success login clear the browser cache.

## Commands for deployment Flask application in Debian based Linux (Ubuntu)

    sudo apt update
    sudo apt -y install python3 python3-dev gcc python3-flask python3-pip

## Commands for deployment Flask application

    cd webservice
    pip install -r requirements.txt
    export FLASK_APP=webservice.py
    export FLASK_ENV=development
    flask run -p 5050 --with-threads
