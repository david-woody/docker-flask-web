FROM python:3.6-alpine 
COPY start.sh /run/
COPY requirements.txt /code/
WORKDIR /code
RUN apk add --no-cache bash \
    && apk update && apk add postgresql-dev gcc python3-dev musl-dev \
    && pip install --upgrade pip \
    &&  pip install gunicorn \
    &&  pip install psycopg2-binary
ENV PYTHONDONTWRITEBYTECODE=1
ENV FLASK_CONFIG=product
RUN pip install -r requirements.txt
CMD ["../run/start.sh"]
EXPOSE 5000
