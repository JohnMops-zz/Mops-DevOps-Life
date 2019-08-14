FROM python:alpine3.7
USER root
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev
WORKDIR /app
COPY . .
EXPOSE 5000
CMD python3 ./Experiment.py
