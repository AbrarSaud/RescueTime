class Emergencies {
  int? id;
  String? emergencyName;
  String? description;
  String? emergencyImag;
  String? descriptionImag;

  Emergencies(
      {this.id,
      this.emergencyName,
      this.description,
      this.emergencyImag,
      this.descriptionImag});

  Emergencies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    emergencyName = json['emergencyName'];
    description = json['description'];
    emergencyImag = json['emergencyImag'];
    descriptionImag = json['descriptionImag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['emergencyName'] = this.emergencyName;
    data['description'] = this.description;
    data['emergencyImag'] = this.emergencyImag;
    data['descriptionImag'] = this.descriptionImag;
    return data;
  }
}