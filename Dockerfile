FROM ubuntu
ADD . /tmp
RUN apt update
RUN apt -y install python3 python3-dev gcc python3-flask python3-pip
RUN ls -lah /tmp
RUN cd /tmp && pip install -r requirements.txt
ENV FLASK_APP="webservice.py"
ENV FLASK_ENV="development"
CMD ["cd /tmp && flask run -p 80"]
