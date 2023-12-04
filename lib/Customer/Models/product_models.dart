
class Product{
  String? name, description, image, grade, color, material, lengthofuse, status;
  int? id, price, stock;
  double? size;

  Product({
    this.id,
    this.name,
    this.description,
    this.image,
    this.grade,
    this.price,
    this.stock,
    this.color,
    this.material,
    this.lengthofuse,
    this.size,
    this.status
  });


}

String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";

List<Product> product = [

  Product(
    id: 1,
    name: 'Nike Air Max 90',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'A',
    price: 150,
    stock: 10,
    color: 'Ash Blue',
    material: 'Leather',
    lengthofuse: '1 Year',
    size: 42.0,
    status: 'To Pay'
  ),
  Product(
    id: 2,
    name: 'ASUS ROG',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'B',
    price: 200,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Ship'
  ),
  Product(
    id: 3,
    name: 'Keyboard Gamen Titan',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'B',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Receive'
  ),
  Product(
    id: 4,
    name: 'Mouse Gaming G20',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Rate'
  ),
  Product(
    id: 5,
    name: 'Fantech Headset H20',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Pay'
  ),
  Product(
    id: 6,
    name: 'Jaket Harakiri',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Pay'
  ),
  Product(
    id: 7,
    name: 'Celana Chinos',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Pay'
  ),
  Product(
    id: 8,
    name: 'Rambut Robot',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Pay'
  ),
  Product(
    id: 9,
    name: 'Puding Lele',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Pay'
  ), 
  Product(
    id: 10,
    name: 'Duren Jatoh',
    description: description,
    image: 'assets/img/Pic in.png',
    grade: 'C',
    price: 150,
    stock: 10,
    color: 'Black',
    material: 'Plastic',
    lengthofuse: '2 Year',
    size: 1.5,
    status: 'To Pay'
  ),
];