FROM python:stretch

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV PYTHONPATH=/app
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8080", "app.app:app"]
