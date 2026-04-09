FROM python:3.10-slim

WORKDIR /opt/CTFd

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "serve.py"]
