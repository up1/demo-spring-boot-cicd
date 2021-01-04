# demo-spring-boot-cicd

Run 
```
// For test
$mvnw clean test

// For code coverage
$mvnw jacoco:report

// For package
$mvnw clean package -DskipTests=true

// Run
$java -jar demo.jar --server.port=8083
```
