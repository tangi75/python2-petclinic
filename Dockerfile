FROM python:2.7.13
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install -y mysql-server --no-install-recommends \
  && apt-get clean \
  && pip install PyMySQL \
  && pip install MySQL-python \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install CherryPy==3.1.2 Pyro Paste

# Adding spring-python 1.1.x (for compatibility with Pet Clinic)
ADD spring-python-1.1.x /spring-python/

WORKDIR /cherrypy

ADD cherrypy ./

ENV PYTHONPATH=/spring-python/src
ENV PATH=$PATH:/usr/local/mysql/bin

EXPOSE 8080

CMD ["python", "petclinic.py"]
