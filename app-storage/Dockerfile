FROM python:3.7-slim

WORKDIR /app

COPY Pipfile Pipfile.lock ./

RUN pip install pipenv && \
   apt-get update && \
   apt-get install -y --no-install-recommends gcc python3-dev libssl-dev && \
   pipenv install --deploy --system && \
   apt-get remove -y gcc python3-dev libssl-dev && \
   apt-get autoremove -y && \
   pip uninstall pipenv -y && \
   pip install awscli

ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""
ENV AWS_DEFAULT_REGION "us-east-1"

COPY . /app
 
CMD ["python", "app.py"]