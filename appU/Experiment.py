#!/usr/bin/python
from flask import Flask, request


app = Flask(__name__)
@app.route('/', methods=['GET'])
def index():
 return "Hello World"


if __name__ == '__main__':
 app.run(host="0.0.0.0", port=80)
