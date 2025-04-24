## MS-TAMIL-BOTZ

FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y \
    && apt install -y git dos2unix

COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

RUN mkdir /LazyPrincessV2
WORKDIR /LazyPrincessV2

COPY start.sh /start.sh

# Convert Windows CRLF to Unix LF and make it executable
RUN dos2unix /start.sh && chmod +x /start.sh

CMD ["/bin/bash", "/start.sh"]
