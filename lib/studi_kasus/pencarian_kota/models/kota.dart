class Kota {
  Kota({
    required this.id,
    required this.idProvinsi,
    required this.name,
  });

  String id;
  String idProvinsi;
  String name;

  factory Kota.fromJson(Map<String, dynamic> json) => Kota(
        id: json["id"],
        idProvinsi: json["id_provinsi"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_provinsi": idProvinsi,
        "name": name,
      };

  @override
  String toString() => name;
}
