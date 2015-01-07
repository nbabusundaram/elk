
docker run -d -p 9200:9200 -p 9300:9300 --name nbelasticsearch   nbabusundaram/elasticsearch   /elasticsearch/bin/elasticsearch   -Des.http.cors.enabled=true

docker run -d   --name nbkibana   -e ES_HOST="\"+window.location.hostname+\"" -e ES_PORT=9200   -p 9292:80   nbabusundaram/kibana

docker run -d   --name nblogstash   --link nbelasticsearch:es   -p 9998:9998   -p 9999:9999/udp   -v ~/elk-config/logstash.conf:/opt/logstash.conf   nbabusundaram/logstash

