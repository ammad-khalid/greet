FROM python:3.10-slim
#setup dependencies
RUN pip install flask redis
WORKDIR /app
COPY greet.py .
# start redis server
RUN redis-server
EXPOSE 8080
# run app
CMD ["python", "greet.py"]
