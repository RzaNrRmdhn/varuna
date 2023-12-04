class SpecialOffer {
  int? id;
  String? title, description, image;

  SpecialOffer({
    this.id,
    this.title,
    this.description,
    this.image,
  });
}

String? description = "Get discount for every order, only valid for today";

List<SpecialOffer> specialOffer = [

  SpecialOffer(
    id: 1,
    title: 'Nike Air Max 90',
    description: description,
    image: 'assets/img/offer1.png',
  ),
  SpecialOffer(
    id: 2,
    title: 'Nike Air Max 90',
    description: description,
    image: 'assets/img/offer2.png',
  ),
  SpecialOffer(
    id: 3,
    title: 'Nike Air Max 90',
    description: description,
    image: 'assets/img/offer3.png',
  ),
];