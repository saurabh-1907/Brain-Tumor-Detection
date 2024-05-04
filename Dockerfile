# Use an appropriate base image with Python installed
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Command to run your application, adjust as needed
CMD ["python", "app.py"]
