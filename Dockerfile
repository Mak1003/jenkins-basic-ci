# Use Python base image
FROM python:3.9-slim

# Set workdir
WORKDIR /app

# Copy files
COPY app/ /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
