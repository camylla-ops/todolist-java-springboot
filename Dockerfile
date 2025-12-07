# ETAPA 1: Construção (Build)
# Usamos uma imagem que já tem o Maven e o Java 21 instalados
FROM maven:3.9.8-amazoncorretto-21 AS build

# Define a pasta de trabalho
WORKDIR /app

# Copia o arquivo de configuração e baixa as dependências (para ser mais rápido nas próximas vezes)
COPY pom.xml .
RUN mvn dependency:go-offline

# Copia o código fonte do projeto
COPY src ./src

# Compila o projeto e gera o arquivo .jar (pula os testes para ser mais rápido no deploy)
RUN mvn clean package -DskipTests

# -----------------------------------------------------------------------------

# ETAPA 2: Execução (Run)
# Usamos uma imagem leve apenas com o Java (sem o Maven pesado) para rodar
FROM openjdk:21-jdk-slim

# Define a pasta de trabalho
WORKDIR /app

# Copia apenas o arquivo .jar gerado na etapa anterior
COPY --from=build /app/target/todolist-0.0.1-SNAPSHOT.jar app.jar

# Libera a porta 8080
EXPOSE 8080

# Comando para iniciar o app
ENTRYPOINT ["java", "-jar", "app.jar"]