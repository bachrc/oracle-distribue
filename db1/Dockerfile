FROM wnameless/oracle-xe-11g
ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
ENV ORACLE_SID=xe
ENV TNS_ADMIN=$ORACLE_HOME/network/admin
ENV SQLPLUS=$ORACLE_HOME/bin/sqlplus

COPY startup.sh /usr/sbin
RUN chmod 777 /usr/sbin/startup.sh
COPY listener.ora $TNS_ADMIN
COPY tnsnames.ora $TNS_ADMIN

ADD init.sql /tmp/
ADD h_central_cre.sql /docker-entrypoint-initdb.d/ 
ADD h_central_ins.sql /docker-entrypoint-initdb.d/

RUN service oracle-xe start
