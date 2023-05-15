class Car {
  late String brand;
  late String model;
  late int year;
  late double milesDriven;

  static int numberOfCars = 0;

  Car(String brand, String model, int year) {
    this.brand = brand;
    this.model = model;
    this.year = year;

    milesDriven = 0;
    numberOfCars++;
  }

  void drive(double miles) {
    this.milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge() {
    DateTime now = DateTime.now();
    return (now.year - this.year);
  }
}

void main() {
  Car car1 = new Car("Toyota", "Corolla", 2015);
  car1.drive(5000.5);

  Car car2 = new Car("Tata", "Nano", 2016);
  car2.drive(7000.3);

  Car car3 = new Car("Tesla", "Model X", 2022);
  car3.drive(3000.8);

  print("Car 1:");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()} years\n");

  print("Car 2:");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()} years\n");

  print("Car 3:");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()} years\n");

  print("Total number of Car objects: ${Car.numberOfCars}");
}
