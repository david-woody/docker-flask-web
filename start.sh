#!/bin/bash
pip install -r requirements.txt
gunicorn --certfile=/data/cert/214824044530342.pem --keyfile=/data/cert/214824044530342.key -w 4 -b 0.0.0.0:5000 wsgi:application
