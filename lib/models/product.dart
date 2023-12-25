class Product {
  late String _name;
  late double _price;
  late String _image;

  Product(this._name, this._price, this._image);
  Product.empty();

  get name => _name;

  set name(value) => _name = value;

  get price => _price;

  set price(value) => _price = value;

  get image => _image;

  set image(value) => _image = value;
}
