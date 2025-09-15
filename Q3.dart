// Abstract class
abstract class Shape {
  double? _area;

  void area(); // abstract method

  // Setter
  void setArea(double value) {
    _area = value;
  }

  // Getter
  double getArea() {
    return _area!;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void area() {
    double result = 3.1416 * radius * radius;
    setArea(result);
  }
}

void main() {
  Circle c1 = Circle(5);
  c1.area();
  print("Circle Area: ${c1.getArea()}");
}
