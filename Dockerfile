# build image
FROM python:3.10.8-alpine as python

# upgrade pip and install pipenv
RUN pip install --upgrade pip
RUN pip install pipenv

# copy files to image
WORKDIR /app/
COPY . .

# install dependencies
RUN pipenv install
RUN pipenv run python main.py

# minimal execution image
FROM alpine:3.17

# copy generated image to execution image
WORKDIR /app/
COPY --from=python /app/qrcode.png .
