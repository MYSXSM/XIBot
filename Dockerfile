FROM movecrew/one4ubot:alpine-latest

RUN mkdir /XIBot && chmod 777 /XIBot
ENV PATH="/XIBot/bin:$PATH"
WORKDIR /XIBot

RUN git clone https://github.com/MYSXSM/XIBot -b sql-extended /XIBot

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /XIBot/

#
# Finalization
#
CMD ["python3","-m","userbot"]
