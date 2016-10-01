# Titan Graph Database Docker Image

## Run Cassandra
> docker run -d --name cassandra cassandra

## Enable thrift in Cassandra
> root@cassandra:/# nodetool enablethrift

## Run titan
> docker run --link cassandra:cassandra -e "CASSANDRA_HOSTNAME=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' cassandra`" -it camilocot/titan-dgd

