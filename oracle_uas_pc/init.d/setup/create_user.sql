spool DBCreateInfo.log;

-- 创建表空间
CREATE TABLESPACE uas_pc
DATAFILE 'uas_pc.dat' SIZE 100M AUTOEXTEND ON NEXT  10M MAXSIZE UNLIMITED;

CREATE USER uaspc_majie  IDENTIFIED BY 111111;
  

ALTER USER uaspc_majie DEFAULT   TABLESPACE uas_pc;
ALTER USER uaspc_majie DEFAULT 	ROLE ALL;
GRANT CONNECT TO uaspc_majie;
GRANT RESOURCE TO uaspc_majie;
GRANT create table to uaspc_majie;
GRANT create trigger to uaspc_majie;
GRANT create view to uaspc_majie;


-- 创建表空间
CREATE TABLESPACE uas_pc_m
DATAFILE 'uas_pc_m.dat' SIZE 100M AUTOEXTEND ON NEXT  10M MAXSIZE UNLIMITED;

CREATE USER uaspc_m_majie  IDENTIFIED BY 111111;
  
ALTER USER uaspc_m_majie DEFAULT   TABLESPACE uas_pc_m;
ALTER USER uaspc_m_majie DEFAULT 	ROLE ALL;
GRANT CONNECT TO uaspc_m_majie;
GRANT RESOURCE TO uaspc_m_majie;
GRANT create table to uaspc_m_majie;
GRANT create trigger to uaspc_m_majie;
GRANT create view to uaspc_m_majie;
--disconnect
spool out;
Exit;