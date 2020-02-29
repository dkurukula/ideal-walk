FROM python:3.6

RUN mkdir -p /src/wave
WORKDIR /src
ADD . /src

RUN pip install -r /src/requirements.txt

# create unprivileged user
RUN adduser --disabled-password --gecos '' user

EXPOSE 8000
ENTRYPOINT ["/src/entrypoint.sh"]
