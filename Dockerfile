# Use an official Python runtime as a base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Load environment variables from .env during the build
ARG ENV_FILE
ENV ENV_FILE=${ENV_FILE:-.env}
RUN if [ -f "$ENV_FILE" ]; then export $(cat $ENV_FILE | xargs); fi

# Define environment variable
ENV OPENAI_API_KEY=${OPENAI_API_KEY:-default_value}

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Define the command to run your application
CMD ["streamlit", "run", "./app.py", "--server.port=8501", "--server.address=0.0.0.0"]