FROM python

RUN pip install docker-py

WORKDIR /myapp
COPY ./doc.py .
RUN chmod +x ./doc.py
RUN ./doc.py

