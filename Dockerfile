FROM python:3.11-alpine

WORKDIR /app

COPY ./* ./
RUN apk update
RUN apk add git
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-u", "launcher.py"]
