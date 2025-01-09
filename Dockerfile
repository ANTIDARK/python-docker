FROM python:3.9.21-alpine3.21

WORKDIR /app

COPY . .

EXPOSE 80

RUN apk update &&\
    apk --no-cache add openssl bash curl &&\
    chmod +x app.py &&\
    pip install -r requirements.txt
    
CMD ["python3", "app.py"]
