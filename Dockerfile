FROM zoomdata/quickstart:latest
MAINTAINER allxone@hotmail.com

# Ingest data from specified directory into HDFS
COPY krb5.conf /etc/krb5.conf
COPY zoomdata.keytab /etc/zoomdata/zoomdata.keytab
COPY zoomdata.env /etc/zoomdata/zoomdata.env
RUN yum -y install krb5-libs krb5-workstation && yum clean all && chown zoomdata:zoomdata /etc/zoomdata/zoomdata.keytab && chmod 600 /etc/zoomdata/zoomdata.keytab
