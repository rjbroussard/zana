FROM python:3.11-alpine
RUN apk update
RUN apk add git
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
COPY . /tmp/
WORKDIR /app
COPY . . 

CMD ["python", "-u", "launcher.py"]
