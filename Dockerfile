FROM python:3.6-alpine 
COPY start.sh /run/
COPY requirements.txt /code/
WORKDIR /code
RUN apk add --no-cache bash \
    && apk update && apk add postgresql-dev gcc python3-dev musl-dev libpq-dev\
    && pip install --upgrade pip \
    &&  pip install gunicorn
ENV PYTHONDONTWRITEBYTECODE=1
RUN pip install -r requirements.txt
CMD ["../run/start.sh"]
EXPOSE 5000
