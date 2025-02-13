FROM ubuntu
RUN apt update -y && apt install apache2 -y && apt install git -y
WORKDIR /var/www/html/
RUN git clone https://github.com/vsreekanthreddy/mama.git
ENTRYPOINT apache2ctl -DFOREGROUND
EXPOSE 80
ENV name Welcome to mama
