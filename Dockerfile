FROM python:3.10-slim

# Install Redis and dependencies
RUN apt-get update && apt-get install -y redis-server

# Setup Python dependencies
RUN pip install flask redis

# Set the working directory
WORKDIR /app

# Copy the application code
COPY greet.py .
COPY start.py .

# Expose the port the app runs on
EXPOSE 8080

# Use the start script as the entry point
CMD ["python", "start.py"]
