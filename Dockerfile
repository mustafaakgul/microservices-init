FROM python:3.9.1

RUN mkdir /app
WORKDIR /app

COPY ./helloworld/ /app/

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]