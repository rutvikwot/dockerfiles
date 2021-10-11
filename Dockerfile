FROM python:3.9

RUN apt-get update && apt-get install -y python3-opencv
RUN pip install opencv-python

RUN mkdir python_server 

ADD . python_server/
WORKDIR python_server

RUN pip install -r requirements.txt

EXPOSE 2000
EXPOSE 3001

CMD ["python","app.py"]
