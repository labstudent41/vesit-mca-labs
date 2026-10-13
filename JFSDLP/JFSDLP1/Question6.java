import java.util.ArrayList;

class Employee {
  int id;
  String name;
  double salary;

  Employee(int id, String name, double salary) {
    this.id = id;
    this.name = name;
    this.salary = salary;
  }

  public String toString() {
    return "ID : " + id + ", Name : " + name + ", Salary : " + salary;
  }
}

public class Question6 {

  public static void main(String[] args) {
    ArrayList<Employee> employees = new ArrayList<>();

    employees.add(new Employee(101, "Vikas", 30000));
    employees.add(new Employee(102, "Guddi", 35000));
    employees.add(new Employee(103, "Mandeep", 45000));
    employees.add(new Employee(104, "Abhishek", 40000));
    employees.add(new Employee(105, "Ramesh", 50000));

    System.out.println("Employee List : ");

    for (Employee e : employees)
      System.out.println(e);

    employees.remove(3);

    System.out.println("\nAfter removing one employee : ");

    for (Employee e : employees)
      System.out.println(e);
  }
}
