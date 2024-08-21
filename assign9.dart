class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void displayDetails() {
    print('Laptop ID: $id');
    print('Laptop Name: $name');
    print('Laptop RAM: ${ram}GB');
    print('-----------------------');
  }
}

void main() {
  
  Laptop laptop1 = Laptop(1, 'Dell XPS 13', 16);
  Laptop laptop2 = Laptop(2, 'MacBook Pro', 32);
  Laptop laptop3 = Laptop(3, 'HP Spectre x360', 8);

 
  laptop1.displayDetails();
  laptop2.displayDetails();
  laptop3.displayDetails();
}