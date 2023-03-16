FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP home.py
ENV FLASK_RUN_HOST 10.1.3.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run", "--host=10.1.3.0"]
