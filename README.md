# Titan Graph Database Docker Image

## Run Cassandra
> docker run -d --name cassandra cassandra

## Enable thrift in Cassandra
> root@cassandra:/# nodetool enablethrift

## Run titan
> docker run --link cassandra:cassandra -p 8182:8182 -e "CASSANDRA_HOSTNAME=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' cassandra`" -it camilocot/titan-dgd

## Run gremlin console
```
▶ docker exec -it compassionate_almeida  bin/gremlin.sh

         \,,,/
         (o o)
-----oOOo-(3)-oOOo-----
plugin activated: aurelius.titan
plugin activated: tinkerpop.server
plugin activated: tinkerpop.utilities
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/opt/titan-1.0.0-hadoop1/lib/slf4j-log4j12-1.7.5.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/opt/titan-1.0.0-hadoop1/lib/logback-classic-1.1.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
16:20:57 INFO  org.apache.tinkerpop.gremlin.hadoop.structure.HadoopGraph  - HADOOP_GREMLIN_LIBS is set to: /opt/titan-1.0.0-hadoop1/lib
plugin activated: tinkerpop.hadoop
plugin activated: tinkerpop.tinkergraph
gremlin>

```
