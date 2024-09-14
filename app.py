from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return """<h1>Hello, World!</h1>

<p>This is a simple Flask web application that is running inside a <span style="color: #0000ff;">Docker container</span>.</p>
"""


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
