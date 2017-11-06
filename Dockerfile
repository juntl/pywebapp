FROM python:2.7-alpine
EXPOSE 8080
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt && rm requirements.txt
CMD ["python", "pywebapp.py", "8080"]
