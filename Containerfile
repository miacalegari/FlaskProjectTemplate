FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flaskprojecttemplate create-db
RUN flaskprojecttemplate populate-db
RUN flaskprojecttemplate add-user -u admin -p admin
EXPOSE 5000
CMD ["flaskprojecttemplate", "run"]
