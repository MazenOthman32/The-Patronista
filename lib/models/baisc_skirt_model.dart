
import 'package:patronist/models/patterns_model.dart';

class BasicSkirtModel extends PatternsModel {
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
  
  @override
  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'waist': waist,
      'hip': hip,
      'highHip': highHip,
    };
  }
  
  @override
  String get name => "Basic_Skirt";
}
