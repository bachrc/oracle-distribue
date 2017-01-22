FROM wnameless/oracle-xe-11g
ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
ENV ORACLE_SID=xe
ENV TNS_ADMIN=$ORACLE_HOME/network/admin
ENV SQLPLUS=$ORACLE_HOME/bin/sqlplus

COPY listener.ora $TNS_ADMIN
COPY tnsnames.ora $TNS_ADMIN
COPY startup.sh /usr/sbin
RUN chmod 777 /usr/sbin/startup.sh

ADD init.sql /tmp/
ADD exo3.sql /tmp/
ADD exo4.sql /tmp/
ADD exo6-1.sql /tmp/
ADD exo6-2.sql /tmp/
ADD exo8-1.sql /tmp/
ADD h_cre.sql /docker-entrypoint-initdb.d/
ADD h_ins.sql /docker-entrypoint-initdb.d/
