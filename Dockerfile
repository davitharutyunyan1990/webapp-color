FROM python:3.6-alpine

RUN pip install flask

RUN pip install mysql-connector-python

COPY . /opt/

EXPOSE 8080

WORKDIR /opt

ENTRYPOINT ["python", "app.py"]
