class product{
  final int id;
  final String name;
  final String decription;
  final String type;
  final int price;
  product(this.id, this.name, this.decription, this.type, this.price);
  product.fromJson(Map<String, dynamic> res)
      : id = res['id'],
        name = res['name'],
        decription = res['decription'],
        type = res['type'],
        price = res['price'];
}