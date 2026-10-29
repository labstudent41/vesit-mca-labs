import java.util.Iterator;
import java.util.LinkedList;

public class Question5 {
  public static void main(String[] args) {
    LinkedList<String> list = new LinkedList<>();

    list.add("Vikas");
    list.add("Ramesh");
    list.add("Guddi");
    list.add("Abhishek");
    list.add("Mandeep");

    System.out.println("Forward Traversal : ");

    Iterator<String> forward = list.iterator();
    while (forward.hasNext())
      System.out.println(forward.next());

    System.out.println("\nBackward Traversal : ");

    Iterator<String> backward = list.descendingIterator();
    while (backward.hasNext())
      System.out.println(backward.next());
  }
}
