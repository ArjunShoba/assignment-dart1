class Camera {

  int _id;
  String _brand;
  String _color;
  double _price;

  
  Camera(this._id, this._brand, this._color, this._price);

  
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  
  set id(int id) {
    _id = id;
  }

  set brand(String brand) {
    _brand = brand;
  }

  set color(String color) {
    _color = color;
  }

  set price(double price) {
    _price = price;
  }

  
  void displayDetails() {
    print('Camera ID: $_id');
    print('Camera Brand: $_brand');
    print('Camera Color: $_color');
    print('Camera Price: \$$_price');
    print('-------------------------');
  }
}

void main() {
  
  Camera camera1 = Camera(1, 'Canon', 'Black', 799.99);
  Camera camera2 = Camera(2, 'Nikon', 'Silver', 649.99);
  Camera camera3 = Camera(3, 'Sony', 'Red', 999.99);

  
  camera3.price = 899.99;

  
  camera1.displayDetails();
  camera2.displayDetails();
  camera3.displayDetails();
}