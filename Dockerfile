FROM debian:buster

RUN apt-get -y update &&\
    apt-get install -y \
      # Basic CI capabilities
      openssh-client git git-lfs\
      # Support for entrypoints that drop priviledges
      sudo \
      # Essential python environment
      python3 python3-pip python3-dev build-essential \
      # OpenCV and Numpy
      python3-opencv python3-numpy \
      # TeXLive
      texlive-full \
      # Tesseract
      tesseract-ocr tesseract-ocr-eng tesseract-ocr-deu \
      # Postgres
      libpq-dev \
      # Remove cache and downloaded files
      && apt-get -y clean && rm -rf /var/lib/apt/lists/*

# Setup Python environment
ENV LANG C.UTF-8
ENV PYTHONUNBUFFERED 1
