# Use the official Python image from DockerHub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any package needed in requirements.txt
RUN pip install flask

# Make the port 5000 available to the world outside the container
EXPOSE 5000

# Run the app.py when the container launches
CMD ["python", "app.py"]