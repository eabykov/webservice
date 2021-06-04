# WebService
## Test Web Page with Basic Authentication written on Python using Flask
### Show the Last Commit, Flask app PID, CPU and MEM usage

username: **admin**

password: **secret**

**Note:** To enable Authentication again after success login clear the browser cache.

## Commands for deployment Flask application in Debian based Linux (Ubuntu)

    sudo apt update
    sudo apt -y install python3 python3-dev gcc

## Commands for deployment Flask application in RedHat based Linux (CentOS)

    sudo yum update
    sudo yum -y install python3 python3-devel gcc

## Commands for deployment Flask application

    cd webservice
    pip install -r requirements.txt
    export FLASK_APP=webservice.py
    export FLASK_ENV=development

## Commands for run Flask application on port 80 
    cd webservice
    flask run run --port=80
