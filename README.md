[![](https://images.microbadger.com/badges/image/sotadb/flask.svg)](https://microbadger.com/images/sotadb/flask "Get your own image badge on microbadger.com")

This is the flask enviroment used by SotADB.info. It is designed to be used behind a Kubernetes ingress load-balancer and infront of a postresql image. Because of the intention to use with ingress, it delivers http, rather then binary traffic. It's an Alpine 3.5 image containing the following:

 * uwsgi-python
 * postgresql-libs
 * Flask
 * Flask-Misaka
 * oauth2client
 * PyGreSQL
 * requests
