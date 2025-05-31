FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENV PYTHONPATH=/app
ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
