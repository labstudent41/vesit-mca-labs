interface Shape {
	double area();
}

class Circle implements Shape {
	private double radius;

	Circle(double radius) {
		this.radius = radius;
	}

	@Override
	public double area() {
		return Math.PI * radius * radius;
	}
}

class Square implements Shape {
	private double side;

	Square(double side) {
		this.side = side;
	}

	@Override
	public double area() {
		return side * side;
	}
}

class BoundedShape<T extends Shape> {
	private T shape;

	BoundedShape(T shape) {
		this.shape = shape;
	}

	public void displayArea() {
		System.out.println("Area = " + shape.area());
	}
}

public class Question1 {
	public static void main(String[] args) {
		Circle c = new Circle(7);
		Square s = new Square(25);

		BoundedShape<Circle> circleShape = new BoundedShape<>(c);
		BoundedShape<Square> squareShape = new BoundedShape<>(s);

		circleShape.displayArea();
		squareShape.displayArea();
	}
}
