FROM wnameless/oracle-xe-11g
ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
ENV ORACLE_SID=xe
ENV TNS_ADMIN=$ORACLE_HOME/network/admin
ENV SQLPLUS=$ORACLE_HOME/bin/sqlplus

COPY listener.ora $TNS_ADMIN
COPY tnsnames.ora $TNS_ADMIN
COPY startup.sh /usr/sbin
RUN chmod 777 /usr/sbin/startup.sh

RUN service oracle-xe start
