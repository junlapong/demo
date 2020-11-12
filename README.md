# POC Spring boot without parent pom

## Update Parents

```
./mvnw -f parent/pom.xml install
```

## Dev with Auto Reload

```
./mvnw spring-boot:run
```

## Pack War

```
./mvnw clean package
```

__Output__: ./target/demo.war ready for deploy

## Reference

- [Spring Boot - parent pom when you already have a parent pom](https://stackoverflow.com/a/47954088/1849597)
- [Spring boot without parent pom](https://javadeveloperzone.com/spring-boot/spring-boot-without-parent-pom/)

## Todo

- [ ] test deploy war to tomcat
- [ ] migrate code/configurattion from existing project
