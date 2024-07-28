# Use the official Python 3.10 image as the base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
ADD requirements.txt /app/requirements.txt

# Install the Python dependencies
RUN pip install -r /app/requirements.txt

# Copy the rest of the application code to the working directory
ADD . /app

# Expose the port on which the Flask app will run
ENV PORT 8080

# Specify the command to run the application
CMD ["gunicorn", "app:app", "--config=config.py"]


