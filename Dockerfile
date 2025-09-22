FROM ubuntu

WORKDIR /doc_usecase

RUN apt update && \
    apt install -y python3 python3-pip && \
    pip3 install flask && \
    rm -rf /var/lib/apt/lists/*

COPY hello.py .

EXPOSE 8081

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
ENV FLASK_APP=hello.py
