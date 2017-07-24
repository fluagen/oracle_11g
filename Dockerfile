FROM wnameless/oracle-xe-11g

ADD start.sh /docker-entrypoint-initdb.d/

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
