# We're using Ubuntu 20.10
FROM privatener29/lonelywolf-dock:lonelywolf

RUN git clone -b Lonelywolf-ubot https://github.com/W29F/Lonelywolf-ubot.git /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/W29F/Lonelywolf-ubot/master/requirements.txt

CMD ["python3","-m","userbot"]
