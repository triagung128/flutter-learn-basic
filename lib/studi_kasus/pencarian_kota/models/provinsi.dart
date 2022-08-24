class Provinsi {
  Provinsi({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Provinsi.fromJson(Map<String, dynamic> json) => Provinsi(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };

  @override
  String toString() => name;
}
