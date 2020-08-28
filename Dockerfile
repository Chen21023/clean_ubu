FROM  zzn2/sklearn_env:latest
COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN apt-get update

# sudo
RUN apt-get install sudo
# curl&telnet
RUN apt-get install -y curl telnet
# ping
RUN apt-get install -y iputils-ping