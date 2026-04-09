FROM python:3.10-slim

WORKDIR /opt/CTFd

COPY . .

RUN pip install --no-cache-dir -r requirements.txt \
    && pip install gunicorn psycopg2-binary

EXPOSE 8000

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "CTFd:create_app()"]
