#!/bin/bash
docker run --name postgres -d incodehq/postgres
docker run --name isis-app-dockertest --link postgres:db -e ISIS_OPTS="isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionDriverName=org.postgresql.Driver||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionURL=jdbc:postgresql://db:5432/incodehq||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionUserName=incodehq||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionPassword=incodehq" -p 8080:8080 -d incodehq/isis-app-dockertest
# run with in memory database:
# docker run -d -p 8080:8080 --name isis-app-dockertest incodehq/isis-app-dockertest