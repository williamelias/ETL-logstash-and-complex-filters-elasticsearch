FROM docker.elastic.co/logstash/logstash:7.17.5


#RUN bin/logstash-plugin install logstash-input-opensearch
# RUN rm  logstash-core/lib/jars/*
ADD postgresql-42.7.4.jar logstash-core/lib/jars

# RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-jdbc
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-opensearch
