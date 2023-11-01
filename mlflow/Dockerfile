FROM python:3.9.13-slim

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

EXPOSE 80
EXPOSE 443

RUN echo "export LC_ALL=$LC_ALL" >> /etc/profile.d/locale.sh
RUN echo "export LANG=$LANG" >> /etc/profile.d/locale.sh

WORKDIR ./mlflowserver

RUN apt update && apt install -y \
	build-essential \
	python3-dev \
	libpq-dev

RUN pip install --upgrade pip && \
    pip install --no-cache-dir 'mlflow==1.26.1'

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt
RUN pip install --upgrade SQLAlchemy==1.4.46

COPY ./start.sh ./start.sh

RUN chmod +x ./start.sh

CMD ["./start.sh"]
