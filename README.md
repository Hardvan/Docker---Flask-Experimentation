# Docker & Flask Experimentation

This project demonstrates how to create a simple Flask application that displays "Hello, World!" and containerize it using Docker.

## Project Structure

```plaintext
docker-flask-hello-world/
├── app.py
├── Dockerfile
└── requirements.txt
```

## Prerequisites

- Docker installed on your system
- Basic knowledge of Python and Flask

## Quick Start

1. Clone the repository or create the project structure as shown above.

2. Build the Docker image:

   ```bash
   docker build -t flask-hello-world .
   ```

3. Run the Docker container:

   ```bash
   docker run -p 5000:5000 flask-hello-world
   ```

4. Open a web browser and navigate to `http://localhost:5000` to see the "Hello, World!" message.

## Detailed Workflow

### 1. Set up the project

Create a new directory and navigate into it:

```bash
mkdir docker-flask-hello-world
cd docker-flask-hello-world
```

### 2. Create the Flask application

Create `app.py`:

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello, World!</h1>'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
```

### 3. Create a venv, install Flask and freeze the requirements

Create a virtual environment and install Flask:

```bash
python -m venv venv
source venv/bin/activate
pip install Flask
pip freeze > requirements.txt
```

### 4. Create the Dockerfile

Create a file named `Dockerfile`:

```dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "app.py"]
```

### 5. Build the Docker image

```bash
docker build -t flask-hello-world .
```

### 6. Run the Docker container

```bash
docker run -p 5000:5000 flask-hello-world
```

### 7. Access the application

Open a web browser and go to `http://localhost:5000`

## Stopping the Application

To stop the running container, use `Ctrl+C` in the terminal where the container is running.

## Troubleshooting

If you encounter any issues:

1. Ensure Docker is running on your system.
2. Check that port 5000 is not in use by another application.
3. Verify that all files are in the correct location and have the correct content.
