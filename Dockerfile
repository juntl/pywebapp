FROM python:2.7-alpine
EXPOSE 8080
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
CMD ["python", "pywebapp.py", "8080"]
