# Minimal Dockerfile for a small Flask app
FROM python:3.11-slim

WORKDIR /app

# Copy and install requirements first for better caching
COPY REQUIREMENTS.TXT ./
RUN pip install --no-cache-dir -r REQUIREMENTS.TXT

# Copy application files
COPY . .

ENV PYTHONUNBUFFERED=1

CMD ["python", "app.py"]
