# Build the image with the following command:
# Build application image
FROM eclipse-temurin:17-jdk

# Set author
LABEL Mentainer="jfcaraballo@gmail.com"

# Set the working directory
WORKDIR /application
COPY target/${project.build.finalName}.jar /application/${project.build.finalName}.jar

# Expose the port
EXPOSE 8888

# Run the application
ENTRYPOINT ["java", "-jar", "${project.build.finalName}.jar"]
