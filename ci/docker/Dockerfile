FROM python:3.6-slim

COPY ./requirements.txt requirements.txt

RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && pip install -r  requirements.txt \
    && apt-get purge -y --auto-remove gcc build-essential


