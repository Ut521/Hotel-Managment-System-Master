# Use an OpenJDK base image
FROM openjdk:17-alpine

# Set the working directory
WORKDIR /app

# Copy files
COPY . .

# Compile and run (adjust if using Maven or Gradle)
#RUN javac src/Main.java
#RUN javac $(find src -name "*.java")
RUN javac /var/lib/jenkins/workspace/Hotel-Managment-System-Master/src/hotel/management/system/HotelManagementSystem.java

# Run the application
#CMD ["java", "src/Main"]
CMD ["java", "hotel.management.Main"]
