FROM golang:1.11-alpine

RUN wget -O hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.49/hugo_0.49_Linux-64bit.tar.gz \
  && tar -xvf hugo.tar.gz \
  && mv hugo /usr/local/bin

COPY . .

EXPOSE 1313

ENTRYPOINT ["hugo", "server", "-w", "--bind", "0.0.0.0"]
