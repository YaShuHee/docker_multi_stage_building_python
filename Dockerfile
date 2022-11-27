FROM python:3.10.8-alpine

# upgrade pip and install pipenv
RUN pip install --upgrade pip
RUN pip install pipenv

# copy files to image
RUN mkdir /app/
WORKDIR /app/
COPY . .

# install dependencies
RUN pipenv install
RUN pipenv run python main.py
