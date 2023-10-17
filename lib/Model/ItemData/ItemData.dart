class ItemData {
  String? img;
  String? name;
  num? discount;
  int? price;
  List<DownListData>? newdata;

  ItemData({this.newdata, this.name, this.discount, this.img, this.price});

  int afterDis(price, discount) {
    return (price - discount);
  }

}

class DownListData {
  String? img;
  String? name;
  num? discount;

  DownListData({this.img, this.name, this.discount});
}
