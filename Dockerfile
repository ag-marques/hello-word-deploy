FROM python:3

#RUN apt-get update && apt-get install -y python-pip python-dev

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD gunicorn --bind 0.0.0.0:$PORT wsgi