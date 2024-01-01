class Medicen {
  int id, price, amount;
  final String scientificName, commercialName, manufacturer, image;
  final DateTime expirationDate;
  final List<String> catogires;
  Medicen(
    this.id,
    this.scientificName,
    this.commercialName,
    this.catogires,
    this.manufacturer,
    this.amount,
    this.expirationDate,
    this.price,
    this.image,
  );
}

List<Medicen> MyMed = [
  Medicen(
    1,
    "dexamid",
    "modal",
    ["pants", "Herbs"],
    "hifelife",
    50,
    DateTime.utc(2024, 1, 1),
    5000,
    "assest/images/drug.png",
  ),
  Medicen(
    2,
    "scientificName",
    "tripland",
    ["heart", "Herbs"],
    "freshabo3ali",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    3,
    "scientificName",
    "commercialName",
    ["Analgesic", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    4,
    "scientificName",
    "commercialName",
    ["Analgesic", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    5,
    "scientificName",
    "commercialName",
    ["Analgesic", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    6,
    "scientificName",
    "commercialName",
    ["Beauty", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    7,
    "scientificName",
    "commercialName",
    ["Analgesic", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    8,
    "scientificName",
    "commercialName",
    ["Beauty", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
  Medicen(
    9,
    "scientificName",
    "commercialName",
    ["Beauty", "Herbs"],
    "Manufacturer",
    10,
    DateTime.utc(1989, 11, 9),
    100,
    "assest/images/drug.png",
  ),
];

List category = [
  {"image": "images/medications.png", "title": "Medication"},
  {"image": "images/medical_supplies.png", "title": "Medical Supplies"},
  {"image": "images/baby_needs.png", "title": "Baby Needs"},
  {"image": "images/herbs.png", "title": "Herbs"},
  {"image": "images/beauty.png", "title": "Beauty"}
];