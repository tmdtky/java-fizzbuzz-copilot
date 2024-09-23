![Java CI with Maven](https://github.com/tmdtky/java-fizzbuzz-copilot/actions/workflows/maven.yml/badge.svg)

# java-fizzbuzz-copilot

## 要件
『3の倍数の場合は「Fizz」、5の場合は「Buzz」、3の倍数かつ5の倍数は「FizzBuzz」と出力する。また、いずれでもない場合はその数を出力する。』
実行したら1から100までの数字において、上記条件で標準出力に改行つきで出力するプログラムを作ってください。

## 用いた技術
Java11、JUnit5、Maven4、Docker、docker-compose、GitHub Actions

## 動作方法
```
git clone https://github.com/tmdtky/java-fizzbuzz-copilot.git
cd java-fizzbuzz-copilot
docker-compose build --no-cache
docker-compose up
```

## 動作結果確認後
```
docker-compose down
```