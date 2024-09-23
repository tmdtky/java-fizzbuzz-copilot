# ベースイメージとしてOpenJDK 11とMavenを使用
FROM maven:3.8.1-openjdk-11-slim as build

# プロジェクトディレクトリを作成
WORKDIR /app

# プロジェクトファイルをすべてコピー
COPY . .

# Mavenを使ってテストとビルドを実行
RUN mvn clean test package

# メインのコンテナとしてOpenJDK 11を使用
FROM openjdk:11

# ビルド済みのJARファイルをコピー
COPY --from=build /app/target/fizzbuzz-1.0-SNAPSHOT.jar /app/fizzbuzz.jar

# 実行コマンド
CMD ["java", "-jar", "/app/fizzbuzz.jar"]