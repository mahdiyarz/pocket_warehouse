import 'package:equatable/equatable.dart';

const String brandsTable = 'brands';

class BrandFields {
  static const List<String> values = [
    id,
    name,
    latin,
  ];

  static const String id = 'id';
  static const String name = 'name';
  static const String latin = 'latin';
}

class BrandModel extends Equatable {
  final int? id;
  final String name;
  final String latin;

  const BrandModel({
    required this.id,
    required this.name,
    required this.latin,
  });

  Map<String, dynamic> toDB() => {
        BrandFields.id: id,
        BrandFields.name: name,
        BrandFields.latin: latin,
      };

  BrandModel copyWith({
    int? id,
    String? name,
    String? latin,
  }) =>
      BrandModel(
        id: id ?? this.id,
        name: name ?? this.name,
        latin: latin ?? this.latin,
      );

  static BrandModel fromDB(Map<String, dynamic> json) => BrandModel(
        id: json[BrandFields.id] as int?,
        name: json[BrandFields.name] as String,
        latin: json[BrandFields.latin] as String,
      );

  @override
  List<dynamic> get props => [
        id,
        name,
        latin,
      ];
}
