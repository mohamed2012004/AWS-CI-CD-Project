FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

RUN apt update -y && apt install -y awscli ffmpeg libsm6 libxext6 unzip

ENV TMPDIR=/var/tmp
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
