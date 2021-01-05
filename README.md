# demo-spring-boot-cicd

Run app
```
// Analyze code with SonarQube
$mvnw sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login=admin -Dsonar.password=admin -Dsonar.projectName=somkiat  -Dsonar.projectKey=somkiat

// For test
$mvnw clean test

// For code coverage
$mvnw jacoco:report

// For package
$mvnw clean package -DskipTests=true

// Run
$java -jar demo.jar --server.port=8083
```
