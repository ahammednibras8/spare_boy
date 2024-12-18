
class ShowItemsModel {
  final String productId;
  final String image;
  final String productName;
  final String sellersName;
  final String price;
  final double? discount;
  final bool isCarted;
  final bool isFavorited;

  ShowItemsModel({
    required this.productId,
    required this.image,
    required this.productName,
    required this.sellersName,
    required this.price,
    this.discount = 0.0,
    required this.isCarted,
    required this.isFavorited,
  });
}

// class ItemModel {
//   final String productId;
//   final String image;
//   final String productName;
//   final String sellersName;
//   final String price;
//   final double? discount;
//   final bool isCarted;
//   final bool isFavorited;
//   final bool isOrdered;
//   final String description;
//   final String sellerId;
//   final String sellerPhone;
//   final String sellerEmail;
//   final Map<String,dynamic> sellerAddress;
//   final List<String> paymentMethods;
//   final double? rating;
//   final List<String>? images;
//   final Map<String,dynamic> productDetails;

//   ItemModel({
//     required this.productId,
//     required this.image,
//     required this.productName,
//     required this.sellersName,
//     required this.price,
//     this.discount = 0.0,
//     required this.isCarted,
//     required this.isFavorited,
//     required this.isOrdered,
//     required this.description,
//     required this.sellerId,
//     required this.sellerPhone,
//     required this.sellerEmail,
//     required this.sellerAddress,
//     required this.paymentMethods,
//     this.rating = 0.0,
//     this.images = const [''],
//     required this.productDetails,
//   });
// }

