FROM python:3.6

WORKDIR /home/ec2-user
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/czhu505/602test /home/ec2-user/apps

EXPOSE 5000
CMD [ "python", "/home/ec2-user/apps/Trader.py" ]
