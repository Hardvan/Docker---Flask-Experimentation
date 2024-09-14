# Use an official Python runtime as the base image
FROM python:3.10.4

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Specify the command to run on container start
CMD ["python", "app.py"]
