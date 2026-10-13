class Employee {
	int employeeId;
	String employeeName;
	double employeeSalary;
	
	Employee(int employeeId, String employeeName, double employeeSalary) {
		setEmployeeDetails(employeeId, employeeName, employeeSalary);
	}

	void setEmployeeDetails(int employeeId,
			String employeeName, double employeeSalary) {
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeSalary = employeeSalary;
	}

	void displayEmployeeDetails() {
		System.out.println("\n# Employee Details");
		System.out.println("Name: " + this.employeeName);
		System.out.println("Id: " + this.employeeId);
		System.out.println("Salary: " + this.employeeSalary);
	}
}

class Manager extends Employee {

	String departmentName;

	Manager(int employeeId, String employeeName, double employeeSalary,
			String departmentName) {
		super(employeeId, employeeName, employeeSalary);
		this.departmentName = departmentName;
	}

	void displayDepartmentDetails() {
		System.out.println("\n# Department Details");
		System.out.println("Name: " + this.departmentName);
		System.out.println("\n# Manager");
		this.displayEmployeeDetails();
	}
}

class Inheritance {
	public static void main(String[] args) {
		Manager vikas;
		vikas = new Manager(
				101,
				"Ramesh Chakravarti",
				75000.0,
				"DevOps"
				);
		vikas.displayDepartmentDetails();
	}
}
