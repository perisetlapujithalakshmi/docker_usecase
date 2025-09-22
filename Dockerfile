FROM ubuntu

WORKDIR /doc_usecase

RUN apt update
RUN apt install -y python3 python3-pip
RUN apt install -y python3-flask

COPY hello.py .

EXPOSE 8081

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
ENV FLASK_APP=hello.py
