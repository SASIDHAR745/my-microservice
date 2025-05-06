# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed dependencies
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside the container
EXPOSE 5000

# Define the command to run your app
CMD ["python", "app.py"]
