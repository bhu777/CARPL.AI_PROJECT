FROM python:3
RUN apt-get update && apt-get upgrade
RUN apt install tesseract-ocr
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pytesseract opencv-python 
    
WORKDIR /usr/app/src

COPY carplaipro.py ./

CMD ["python3", "./carplaipro.py"]
