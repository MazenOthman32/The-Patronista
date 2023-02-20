import 'dart:ffi';

class BasicSkirtModel {
  final double height;
  final double waist;
  final double hip;
  final double highHip;

  BasicSkirtModel({
    required this.height,
    required this.waist,
    required this.hip,
    required this.highHip,
  });

  factory BasicSkirtModel.fromJson(
      String height, String waist, String hip, String highHip) {
    return BasicSkirtModel(
      height: double.parse(height),
      waist: double.parse(waist),
      hip: double.parse(hip),
      highHip: double.parse(highHip),
    );
  }
}
