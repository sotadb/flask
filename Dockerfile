FROM alpine:3.5
ENV LANG en_US.UTF-8
ARG FEATURES="uwsgi-python libffi postgresql-libs ca-certificates"
ARG BUILDDEPS="build-base postgresql-dev libffi-dev python-dev musl-dev py2-pip"
ARG PYTHON_MODULES="Flask Flask-Misaka oauth2client PyGreSQL" 

# This adds what we need, then cleans up.
RUN apk --update add --no-cache --virtual .build-deps $BUILDDEPS \
	&& apk --update add --no-cache $FEATURES \
	&& pip install --no-cache-dir $PYTHON_MODULES \
	&& apk del .build-deps

COPY www /var/www
COPY uwsgi.ini /etc/uwsgi/

CMD ["uwsgi", "/etc/uwsgi/uwsgi.ini"]
