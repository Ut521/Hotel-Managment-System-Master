# Use an OpenJDK base image
FROM openjdk:17-alpine

# Set the working directory
WORKDIR /app

# Copy files
COPY . .

# Compile and run (adjust if using Maven or Gradle)
RUN javac src/Main.java

# Run the application
CMD ["java", "src/Main"]

