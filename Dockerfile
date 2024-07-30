FROM python:3.10-slim

WORKDIR /app

COPY ./* ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "launcher.py"]
