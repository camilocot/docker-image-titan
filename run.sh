#!/bin/sh

sed -i "s/CASSANDRA_HOSTNAME/${CASSANDRA_HOSTNAME}/" /opt/titan-1.0.0-hadoop1/conf/gremlin-server/cassandra.properties

/opt/titan-1.0.0-hadoop1/bin/gremlin-server.sh /opt/titan-1.0.0-hadoop1/conf/gremlin-server/gremlin-server.yaml
