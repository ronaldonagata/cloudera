docker run \
--rm \
-it \
--hostname=quickstart.cloudera \
--privileged=true \
-u cloudera \
-p 8887:8888 \
-p 8889:8889 \
-p 10020:10020 \
-p 8022:22 \
-p 7180:7180 \
-p 11000:11000 \
-p 50070:50070 \
-p 50075:50075 \
-p 8088:8088 \
-p 19888:19888 \
-p 8983:8983 \
-p 8032:8032 \
-p 8042:8042 \
-p 60010:60010 \
semantix/cloudera_quickstart:1.0 \
bin/bash #/usr/bin/docker-quickstart #bin/bash 