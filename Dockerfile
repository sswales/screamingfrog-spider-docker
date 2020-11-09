FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  wget \
  xdg-utils \
  zenity \
  fonts-wqy-zenhei \
  libgconf-2-4 \
  ttf-mscorefonts-installer \
  libgtk2.0-0 \
  libnss3 \
  libxss1 \
  libasound2

RUN wget --no-verbose https://download.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_13.2_all.deb && \
  dpkg -i /screamingfrogseospider_13.2_all.deb && \
  apt-get install -f -y

COPY ./config/spider.config /root/.ScreamingFrogSEOSpider/spider.config
COPY ./config/licence.txt /root/.ScreamingFrogSEOSpider/licence.txt
COPY ./config/default-en-DE.seospiderconfig /root/.ScreamingFrogSEOSpider/default-en-DE.seospiderconfig

RUN mkdir /home/crawls

ENTRYPOINT ["/usr/bin/screamingfrogseospider"]

CMD ["--help"]
