# FROM python:3.10.0-alpine3.14
FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt /app

RUN pip install -r requirements.splunk.txt
RUN splk-py-trace-bootstrap

COPY app.py /app

EXPOSE 5001
ENTRYPOINT [ "splunk-py-trace" ]
CMD [ "python", "app.py" ]

#docker build -t leungsteve/sentiment-splkotel:0.1 .
#docker push leungsteve/sentiment-splkotel:0.1