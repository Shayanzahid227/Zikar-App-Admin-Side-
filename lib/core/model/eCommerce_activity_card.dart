import 'dart:ui';

// class ECommerceActivityCardModel {
//   final String title;
//   final String value;
//   final double percentageChange;
//   final bool isIncrease;
//   final String? imageUrl;

// //  final List<double> chartData;
//   //final Color chartColor;

//   const ECommerceActivityCardModel(
//       {required this.title,
//       required this.value,
//       required this.percentageChange,
//       required this.isIncrease,
//       this.imageUrl

//       // required this.chartData,
//       //required this.chartColor,
//       });
// }
import 'dart:ui';

class ECommerceActivityCardModel {
  final String title;
  final String value;
  final double percentageChange;
  final bool isIncrease;
  final String? imageUrl;
  final List<double>? chartData; // ✅ Un-commented chart data
  final Color? chartColor; // ✅ Added chart color

  const ECommerceActivityCardModel({
    required this.title,
    required this.value,
    required this.percentageChange,
    required this.isIncrease,
    this.imageUrl,
    this.chartData, // ✅ Now included
    this.chartColor, // ✅ Now included
  });
}
