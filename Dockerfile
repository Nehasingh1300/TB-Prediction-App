FROM ubuntu

RUN apt-get update

RUN set -xe \
    && apt-get update \
    && apt-get install python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENV PORT 8080
EXPOSE 8080
ENTRYPOINT [ "gunicorn" ]
CMD [ "predict:app" ]
