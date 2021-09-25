import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //Catalog field
  late CatalogModel _catalog;

  //Collection of IDs - store IDs of each Item
  final List<int> _itemIds = [];

  //Getter for Catalog
  CatalogModel get catalog => _catalog;

  //Setter for Catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart by Ids
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void addItem(Item item) {
    _itemIds.add(item.id);
  }

  //Remove item
  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}
