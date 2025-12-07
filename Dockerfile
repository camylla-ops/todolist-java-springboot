# ETAPA 1: Construção (Build)
FROM maven:3.9.6-amazoncorretto-21 AS build

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src

RUN mvn clean package -DskipTests

# -----------------------------------------------------------------------------

# ETAPA 2: Execução (Run)
# CORREÇÃO AQUI: Usando Eclipse Temurin (JDK oficial e leve) em vez do OpenJDK antigo
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copia o .jar gerado na etapa anterior
COPY --from=build /app/target/todolist-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]