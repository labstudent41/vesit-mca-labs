 class GenericArray<T extends Number> {
	private T[] array;

	GenericArray(T[] array) {
		this.array = array;
	}

	public double average() {
		double sum = 0;

		for (T value : array)
			sum += value.doubleValue();

		return sum / array.length;
	}

	public boolean isAverageEqual(GenericArray<? extends Number> other) {
		return this.average() == other.average();
	}
}

public class Question2 {

	public static void main(String[] args) {
		Integer[] a = { 40, 20, 30, 40, 20 };
		Double[] b = { 60.0, 10.0, 20.0 };

		GenericArray<Integer> obj1 = new GenericArray<>(a);
		GenericArray<Double> obj2 = new GenericArray<>(b);

		System.out.println("Average of Integer array = " + obj1.average());
		System.out.println("Average of Double array = " + obj2.average());

		if (obj1.isAverageEqual(obj2))
			System.out.println("Average is equal");

		else
			System.out.println("Average is not equal");
	}
}
