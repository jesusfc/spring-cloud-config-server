FROM openjdk:17-ea-3-jdk-slim as builder
WORKDIR /application
ADD maven/${project.build.finalName}.jar ${project.build.finalName}.jar
RUN java -Djarmode=layertools -jar ${project.build.finalName}.jar extract

FROM openjdk:17-ea-3-jdk-slim
LABEL PROJECT_NAME=${project.artifactId} PROJECT_ID=${project.groupId}

EXPOSE 8888

WORKDIR /application
COPY --from=builder /application/dependencies/ ./
COPY --from=builder /application/spring-boot-loader/ ./
COPY --from=builder /application/snapshot-dependencies/ ./
COPY --from=builder /application/application/ ./
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]

