FROM python:3.11-slim

# you can choose to name folder whatever you want
WORKDIR /myapp

COPY ./requirements.txt /myapp/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./src /myapp/app

EXPOSE 80

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]