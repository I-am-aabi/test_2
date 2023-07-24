/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/
class Root {
  int? id;
  String? brand;
  String? name;
  String? price;
  String? imagelink;
  String? description;
  double? rating;

  Root(
      {this.id,
      this.brand,
      this.name,
      this.price,
      this.imagelink,
      this.description,
      this.rating});

  Root.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    name = json['name'];
    price = json['price'];
    imagelink = json['image_link'];
    description = json['description'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['brand'] = brand;
    data['name'] = name;
    data['price'] = price;
    data['image_link'] = imagelink;
    data['description'] = description;
    data['rating'] = rating;
    return data;
  }
}
