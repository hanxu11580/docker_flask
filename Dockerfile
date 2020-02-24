FROM python:3.6.5
ENV TZ=Asia/Shanghai

RUN apt-get update -y && \
apt-get install -y python3-pip python3-dev

COPY ./requirements.txt / requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt

COPY ./

ENTRYPOINT ["python3"]

CMD ["flask_test.py"]
