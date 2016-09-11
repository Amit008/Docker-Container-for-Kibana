
FROM centos
ADD startup.sh /tmp/startup.sh

RUN rpm -ivh https://download.elastic.co/kibana/kibana/kibana-4.6.1-x86_64.rpm;groupadd elastic;useradd -g elastic elastic;chown -R elastic:elastic /opt/kibana

ENTRYPOINT ["/tmp/startup.sh"]
