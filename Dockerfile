FROM python:3.10.4
COPY . /DevOps-Challenge
WORKDIR /DevOps-Challenge
RUN pip install -r requirements.txt
CMD export $(cat .env | xargs) && python hello.py

#CMD ["python", "hello.py"]