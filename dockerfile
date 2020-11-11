LABEL name="Py-Flask-Chat"
LABEL maintainer="gtech@gtechnology.biz"
LABEL version="0.01"

FROM python:3.6

# Create app directory
WORKDIR /app

RUN git clone http://github.com/GTechnology-biz/py-flask-chat /app/

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 5000
CMD [ "python", "chat.py" ]
