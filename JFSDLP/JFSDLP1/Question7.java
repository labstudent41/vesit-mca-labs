import java.util.HashMap;

class Customer {
  int account_no;
  String name;

  Customer(int account_no, String name) {
    this.account_no = account_no;
    this.name = name;
  }

  public String toString() {
    return "Account No : " + account_no + ", Name : " + name;
  }
}

public class Question7 {
  public static void main(String[] args) {
    HashMap<Integer, Customer> customers = new HashMap<>();

    customers.put(101, new Customer(101, "Vikas"));
    customers.put(102, new Customer(102, "Abhishek"));
    customers.put(103, new Customer(103, "Mandeep"));
    customers.put(104, new Customer(104, "Ramesh"));
    customers.put(105, new Customer(105, "Guddi"));
    System.out.println("Customer Details : ");

    for (Customer c : customers.values())
      System.out.println(c);

    if (customers.containsKey(101)) {
      System.out.println("\nAccount number 101 is present.");
      System.out.println("Customer " + customers.get(101));
    } else
      System.out.println("\nAccount number 101 is not present.");
  }
}
