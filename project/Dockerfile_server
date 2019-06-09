FROM ubuntu: 18.04

RUN apt-get update -y
RUN apt-get install -y python python-pip


ADD server.py /
RUN pip install Flask

CMD [ "python", "./server.py" ]
