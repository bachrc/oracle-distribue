service oracle-xe start

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=XE

if [ "$ORACLE_ALLOW_REMOTE" = true ]; then
  echo "alter system disable restricted session;" | sqlplus -s SYSTEM/oracle
fi

/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "SYSTEM/oracle" @"/tmp/init.sql";

for f in /docker-entrypoint-initdb.d/*; do
  case "$f" in
    *.sh)     echo "$0: running $f"; . "$f" ;;
    *.sql)    echo "$0: running $f"; echo "exit" | /u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"$f"; echo ;;
    *)        echo "$0: ignoring $f" ;;
  esac
  echo
done
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"/tmp/exo3.sql";
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"/tmp/exo4.sql";
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"/tmp/exo6-1.sql";
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"/tmp/exo6-2.sql";
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"/tmp/exo6-3.sql";
/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "alain/elcaro" @"/tmp/exo8-0.sql";
