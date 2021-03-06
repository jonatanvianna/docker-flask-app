FROM python:3.7
WORKDIR /usr/src/app
COPY ./ ./
RUN pip install -r requirements.txt
RUN useradd -ms /bin/bash mini
USER mini
CMD ["python", "./app.py"]
