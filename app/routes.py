from app import app
import psutil
from functools import wraps
from flask import Flask, request, Response, render_template

def check_auth(username, password):
    """This function is called to check if a username /
    password combination is valid.
    """
    return username == 'admin' and password == 'secret'

def authenticate():
    """Sends a 401 response that enables basic auth"""
    return Response(
    'Could not verify your access level for that URL.\n'
    'You have to login with proper credentials', 401,
    {'WWW-Authenticate': 'Basic realm="Login Required"'})

def requires_auth(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        auth = request.authorization
        if not auth or not check_auth(auth.username, auth.password):
            return authenticate()
        return f(*args, **kwargs)
    return decorated

ospid = psutil.Process()
cpuTimes = ospid.cpu_times()
memoryUsage = ospid.memory_full_info()

@app.route('/')
@app.route('/index')
@requires_auth  #requires_auth decorator for basic auth
def index():
    return render_template('index.html', ospid=ospid, cpuTimes=cpuTimes, memoryUsage=memoryUsage)
