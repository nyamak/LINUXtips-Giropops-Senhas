FROM python:3.11

WORKDIR /usr/src/app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ARG REDIS_HOST=localhost
ENV REDIS_HOST=${REDIS_HOST}

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
