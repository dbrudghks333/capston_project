from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    for i in range(0, 10):
        print(i)
    return 'Hello, World!'
