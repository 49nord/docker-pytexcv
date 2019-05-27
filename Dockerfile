FROM debian:buster

RUN apt-get -y update &&\
    apt-get install -y \
      python3 python3-dev python3-opencv python3-numpy build-essential \
      texlive-full \
      tesseract-ocr tesseract-ocr-eng tesseract-ocr-deu \
      libpq-dev \
      && apt-get -y clean && rm -rf /var/lib/apt/lists/*
ENV LANG C.UTF-8
ENV PYTHONUNBUFFERED 1
