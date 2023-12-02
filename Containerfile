FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN shreem_ai create-db
RUN shreem_ai populate-db
RUN shreem_ai add-user -u admin -p admin
EXPOSE 5000
CMD ["shreem_ai", "run"]
