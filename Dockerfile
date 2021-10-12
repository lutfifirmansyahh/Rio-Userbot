# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
# Halo kak yahaha
# UPI-UBOT
#
RUN git clone -b Upi-Userbot https://github.com/lutfifirmansyahh/Upi-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/lutfifirmansyahh/Upi-Userbot/Upi-Userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
