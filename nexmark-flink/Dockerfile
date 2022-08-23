FROM flink:1.14.2-scala_2.12-java8
COPY ./target/nexmark-flink-bin/nexmark-flink.tgz /nexmark.tgz
RUN tar xzf /nexmark.tgz --directory /
RUN chown -R flink:flink /nexmark-flink
USER flink
#RUN wget --no-check-certificate https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-kafka_2.12/1.14.2/flink-sql-connector-kafka_2.12-1.14.2.jar -P /opt/flink/lib
#RUN wget --no-check-certificate https://repo1.maven.org/maven2/org/apache/flink/flink-connector-kafka_2.12/1.14.2/flink-connector-kafka_2.12-1.14.2.jar -P /opt/flink/lib

RUN ls /opt/flink/lib
RUN cp /nexmark-flink/lib/nexmark-flink-0.2-SNAPSHOT.jar /opt/flink/lib
RUN cp /nexmark-flink/conf/sql-client-defaults.yaml /opt/flink/conf
RUN cp /nexmark-flink/conf/flink-conf.yaml /opt/flink/conf
