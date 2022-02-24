FROM anasty17/mltb:latest
# FROM anasty17/mltb-oracle:latest

WORKDIR /usr/src/app
RUN chmod -R 777 /usr/src/app

RUN mkdir /DrivePool
RUN chmod -R 777 /DrivePool
VOLUME /DrivePool

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
