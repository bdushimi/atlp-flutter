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

  static List<House> generateBestOffers() {
    return [
      House('House 3', '323 Main St', 'assets/images/offer01.jpeg'),
      House('House 4', '556 Main St', 'assets/images/offer02.jpeg'),
    ];
  }
}
