import 'dart:collection';

import 'product.dart';

class ProductsRepository {
  UnmodifiableListView<Product> get allProducts {
    return UnmodifiableListView(_allProducts);
  }

  int get allProductsCount {
    return _allProducts.length;
  }

  final List<Product> _allProducts = <Product>[
    const Product(
      id: 0,
      name: 'Vagabond sack',
      price: 120,
    ),
    const Product(
      id: 1,
      name: 'Stella sunglasses',
      price: 58,
    ),
    const Product(
      id: 2,
      name: 'Whitney belt',
      price: 35,
    ),
    const Product(
      id: 3,
      name: 'Garden strand',
      price: 98,
    ),
    const Product(
      id: 4,
      name: 'Strut earrings',
      price: 34,
    ),
    const Product(
      id: 5,
      name: 'Varsity socks',
      price: 12,
    ),
    const Product(
      id: 6,
      name: 'Weave keyring',
      price: 16,
    ),
    const Product(
      id: 7,
      name: 'Gatsby hat',
      price: 40,
    ),
    const Product(
      id: 8,
      name: 'Shrug bag',
      price: 198,
    ),
    const Product(
      id: 9,
      name: 'Gilt desk trio',
      price: 58,
    ),
    const Product(
      id: 10,
      name: 'Copper wire rack',
      price: 18,
    ),
    const Product(
      id: 11,
      name: 'Soothe ceramic set',
      price: 28,
    ),
    const Product(
      id: 12,
      name: 'Hurrahs tea set',
      price: 34,
    ),
    const Product(
      id: 13,
      name: 'Blue stone mug',
      price: 18,
    ),
    const Product(
      id: 14,
      name: 'Rainwater tray',
      price: 27,
    ),
    const Product(
      id: 15,
      name: 'Chambray napkins',
      price: 16,
    ),
    const Product(
      id: 16,
      name: 'Succulent planters',
      price: 16,
    ),
    const Product(
      id: 17,
      name: 'Quartet table',
      price: 175,
    ),
    const Product(
      id: 18,
      name: 'Kitchen quattro',
      price: 129,
    ),
    const Product(
      id: 19,
      name: 'Clay sweater',
      price: 48,
    ),
    const Product(
      id: 20,
      name: 'Sea tunic',
      price: 45,
    ),
    const Product(
      id: 21,
      name: 'Plaster tunic',
      price: 38,
    ),
    const Product(
      id: 22,
      name: 'White pinstripe shirt',
      price: 70,
    ),
    const Product(
      id: 23,
      name: 'Chambray shirt',
      price: 70,
    ),
    const Product(
      id: 24,
      name: 'Seabreeze sweater',
      price: 60,
    ),
    const Product(
      id: 25,
      name: 'Gentry jacket',
      price: 178,
    ),
    const Product(
      id: 26,
      name: 'Navy trousers',
      price: 74,
    ),
    const Product(
      id: 27,
      name: 'Walter henley (white)',
      price: 38,
    ),
    const Product(
      id: 28,
      name: 'Surf and perf shirt',
      price: 48,
    ),
    const Product(
      id: 29,
      name: 'Ginger scarf',
      price: 98,
    ),
    const Product(
      id: 30,
      name: 'Ramona crossover',
      price: 68,
    ),
    const Product(
      id: 31,
      name: 'Chambray shirt',
      price: 38,
    ),
    const Product(
      id: 32,
      name: 'Classic white collar',
      price: 58,
    ),
    const Product(
      id: 33,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    const Product(
      id: 34,
      name: 'Shoulder rolls tee',
      price: 27,
    ),
    const Product(
      id: 35,
      name: 'Grey slouch tank',
      price: 24,
    ),
    const Product(
      id: 36,
      name: 'Sunshirt dress',
      price: 58,
    ),
    const Product(
      id: 37,
      name: 'Fine lines tee',
      price: 58,
    ),
  ];
}
