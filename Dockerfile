FROM ubuntu

RUN apt-get update && apt-get install -y unrar

WORKDIR /unrar

ENTRYPOINT ["unrar"]