FROM maven:3.8
COPY . build
WORKDIR /build/src/matlab-websocket
RUN /build/jdk/jdk-6u45-linux-x64.bin && mv jdk1.6.0_45 / && \
    mkdir -p ~/.m2 && cp /build/jdk/toolchains.xml ~/.m2/
RUN mvn package -f pom6.xml
