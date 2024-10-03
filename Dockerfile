# Use the official Python 3.12 image from the Docker Hub
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
RUN pip install nostr-dvm

RUN pip install -U https://github.com/mrgick/duckduckgo-chat-ai/archive/master.zip

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run your application
CMD ["python3", "-u", "main.py"]