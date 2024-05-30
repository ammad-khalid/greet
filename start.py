import subprocess
import time
import os

# Function to start Redis server
def start_redis():
    redis_process = subprocess.Popen(['redis-server', '--port', '7777'])
    return redis_process

# Function to start Flask app
def start_flask():
    os.system('python greet.py')

# Start Redis server
redis_process = start_redis()

# Wait for Redis to start
time.sleep(5)

# Start Flask app
start_flask()

# Ensure Redis server stops when this script stops
redis_process.wait()
