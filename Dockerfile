FROM python:3.11-alpine

WORKDIR /opt/webservice

COPY webservice templates
COPY webservice.py requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt \
    && rm -rfv requirements.txt

ENTRYPOINT ["python3", "webservice.py"]
