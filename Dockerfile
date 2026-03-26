FROM python:3.10-slim

WORKDIR /app

# Install dependencies first (cached layer)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Then copy app (changes here won't break cache above)
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]