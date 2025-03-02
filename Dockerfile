# Base image with Python
FROM python:3.9-slim

# Install Java (Spark needs Java)
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Set environment variables for Java & Spark
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Install dependencies
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Copy your docker basic app to the container
COPY app.py /app/app.py

# Command to run the app
CMD ["python", "app.py"]
