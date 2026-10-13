@FunctionalInterface
interface Operation {
  double calculate(double a, double b);
}

public class Question3 {
  public static void main(String[] args) {
    Operation addition = (a, b) -> a + b;
    Operation subtraction = (a, b) -> a - b;
    Operation multiplication = (a, b) -> a * b;
    Operation division = (a, b) -> a / b;
    double a = 20;
    double b = 10;
    System.out.println("Addition = " + addition.calculate(a, b));
    System.out.println("Subtraction = " + subtraction.calculate(a, b));
    System.out.println("Multiplication = " + multiplication.calculate(a, b));
    System.out.println("Division = " + division.calculate(a, b));
  }
}
