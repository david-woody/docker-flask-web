#!/bin/bash
pip install -r requirements.txt
gunicorn --certfile=/data/cert/1801173_bless.orangewisdom.cn.pem --keyfile=/data/cert/1801173_bless.orangewisdom.cn.key -w 4 -b 0.0.0.0:5000 wsgi:application
