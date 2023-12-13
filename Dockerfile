FROM python:3.11-slim
COPY Requirements.txt .
RUN pip install -r Requirements.txt
RUN mkdir -p app
COPY ./app app
EXPOSE 80
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]