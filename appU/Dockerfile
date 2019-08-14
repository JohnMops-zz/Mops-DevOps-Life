FROM python:3.6-alpine
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev && \
    pip3 install flask -y
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["python3", "./Experiment.py"]
