
FROM python:3.9-slim

RUN apt-get update
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY hello.py /app
ENTRYPOINT [ "python" ]
CMD [ "hello.py" ]