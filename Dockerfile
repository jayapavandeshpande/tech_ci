FROM python:2.7
COPY . /app
WORKDIR /app
RUN PYTHONPATH=/usr/local/bin/python pip install -r requirements.txt
RUN python init_db.py
CMD [ "python", "app.py" ]
EXPOSE 3111
