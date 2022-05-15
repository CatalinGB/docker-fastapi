FROM python:3.9

VOLUME ["/code"]

EXPOSE 80

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "parse:app", "--host", "0.0.0.0", "--port", "80", "--reload"]