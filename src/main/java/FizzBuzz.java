public class FizzBuzz {

  public static void main(String[] args) {
      for (int i = 1; i <= 100; i++) {
          System.out.println(checkNumber(i));
      }
  }

  public static String checkNumber(int num) {
      if (num % 3 == 0 && num % 5 == 0) {
          return "FizzBuzz";
      } else if (num % 3 == 0) {
          return "Fizz";
      } else if (num % 5 == 0) {
          return "Buzz";
      } else {
          return String.valueOf(num);
      }
  }
}