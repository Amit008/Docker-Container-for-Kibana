!/bin/bash

echo 'elasticsearch.url: "http://'$1'"' >>/opt/kibana/config/kibana.yml
su -s /bin/bash elastic -c "nohup /opt/kibana/bin/kibana&"

su -l elastic
