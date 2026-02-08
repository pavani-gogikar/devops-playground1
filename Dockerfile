FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask && \
    rm -rf /var/lib/apt/lists/*

COPY app.py /opt/app.py

ENV FLASK_APP=/opt/app.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

