ARG ludwig_version

FROM python:3.6-slim

ARG ludwig_version
RUN  echo "ludwig_version: $ludwig_version"

COPY ./requirements.txt requirements.txt

COPY ./pip-wait.sh pip-wait.sh
RUN ./pip-wait.sh $ludwig_version

RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && pip install -r  requirements.txt \
    && apt-get purge -y --auto-remove gcc build-essential

COPY ./myelin-entrypoint.sh myelin-entrypoint.sh

RUN chmod +x ./myelin-entrypoint.sh
ENTRYPOINT ["./myelin-entrypoint.sh"]
CMD []