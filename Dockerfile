FROM python:3.7-alpine

WORKDIR /s
COPY a /s

RUN pip3 install -r requirements.txt

#CMD  ls;python ./hello.py
CMD export $(cat .env | xargs) && python hello.py

EXPOSE 8000
#"cd";"cd s";"pwd";
