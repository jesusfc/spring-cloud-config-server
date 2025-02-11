##
##
##
FROM eclipse-temurin:17-jdk

# Set author
LABEL Mentainer="jfcaraballo@gmail.com"

# Set Expose port, just for information
EXPOSE 8888

# Set the working directory
# Set the working directory
WORKDIR /application
COPY target/*.jar /application/spring-cloud-config.jar

# Run the application
ENTRYPOINT ["java", "-jar", "spring-cloud-config.jar"]
