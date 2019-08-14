FROM ubuntu:18.04
RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install flask
WORKDIR /app
COPY . .
EXPOSE 80
CMD ["python3", "./Experiment.py"]
