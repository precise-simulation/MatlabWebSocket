FROM maven:3.8
COPY . build
WORKDIR /build/src/matlab-websocket
RUN mvn package -f pom.xml
# RUN /build/jdk/jdk-6u45-linux-x64.bin && mv jdk1.6.0_45 / && \
#     mkdir -p ~/.m2 && cp /build/jdk/toolchains.xml ~/.m2/ && \
#     mvn package -f pom6.xml
