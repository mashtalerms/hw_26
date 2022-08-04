FROM python:3.10-slim

WORKDIR /code

ENV FLASK_APP=run.py
ENV FLASK_DEBUG=1

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["sh", "entrypoint.sh"]
