FROM openjdk:8
ADD target/devops_calculator-1.0-SNAPSHOT.jar devops_calculator-1.0-SNAPSHOT.jar
CMD ["java","-jar","devops_calculator-1.0-SNAPSHOT.jar"]
