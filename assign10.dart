class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void displayDetails() {
    print('House ID: $id');
    print('House Name: $name');
    print('House Price: \$${price}');
    print('-----------------------');
  }
}

void main() {
  House house1 = House(1, 'Villa', 250000.0);
  House house2 = House(2, 'Cottage', 150000.0);
  House house3 = House(3, 'Apartment', 100000.0);

  List<House> houseList = [house1, house2, house3];

  for (House house in houseList) {
    house.displayDetails();
  }
}
