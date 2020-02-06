![Java CI](https://github.com/mlemnian/quarkus/workflows/Java%20CI/badge.svg?branch=master)
# devhive project

This project uses Quarkus, the Supersonic Subatomic Java Framework.

If you want to learn more about Quarkus, please visit its website: https://quarkus.io/ .

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:
```
./mvnw quarkus:dev
```
Access the app: `localhost:8080/resources/hello`.

## Packaging and running the application

The application is packageable using `./mvnw package`.
It produces the executable `devhive-1.0.0-SNAPSHOT-runner.jar` file in `/target` directory.
Be aware that it’s not an _über-jar_ as the dependencies are copied into the `target/lib` directory.

The application is now runnable using `java -jar target/devhive-1.0.0-SNAPSHOT-runner.jar`.

## Creating a native executable

Prerequisites see https://quarkus.io/guides/building-native-image#prerequisites

You can create a native executable using: `./mvnw package -Pnative`.

Or you can use Docker to build the native executable using: `./mvnw package -Pnative -Dquarkus.native.container-build=true`.

You can then execute your binary: `./target/devhive-1.0.0-SNAPSHOT-runner`

If you want to learn more about building native executables, please consult https://quarkus.io/guides/building-native-image-guide .

## Creating a JEE 8 war and deploy
Deploy war into the Applicationserver e.g. open liberty (https://openliberty.io/)

```
./mvnw clean package -f pom.xml.jee
cp target/devhive.war /PATH_TO_LIBERTY/wlp/usr/servers/defaultServer/dropins/
/PATH_TO_LIBERTY/wlp/bin/server start
```

Access the app: `localhost:9080/devhive-jee/resources/hello`.
