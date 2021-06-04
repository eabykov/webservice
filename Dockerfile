FROM ubuntu:20.04
COPY . /tmp
RUN apt update
RUN apt -y install python3 python3-dev gcc python3-flask python3-pip
RUN cd /tmp && pip install -r requirements.txt
ENV FLASK_APP="webservice.py"
ENV FLASK_ENV="development"
WORKDIR /tmp
ENTRYPOINT ["flask run -p 80"]
