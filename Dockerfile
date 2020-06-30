FROM python:3.8.3-alpine3.12

WORKDIR /app

EXPOSE 5002

COPY ./static ./static
COPY ./templates ./templates
COPY server.py ./
COPY requirements.txt ./

RUN apk --no-cache add py3-mysqlclient

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT python3 server.py