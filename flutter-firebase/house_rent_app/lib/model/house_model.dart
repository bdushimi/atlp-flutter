class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommendedHouses() {
    return [
      House('House 1', '123 Main St', 'assets/images/house01.jpeg'),
      House('House 2', '456 Main St', 'assets/images/house02.jpeg'),
    ];
  }
}
