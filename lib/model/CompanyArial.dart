
class CompanyArial {
  String image;
  String toastName;

  CompanyArial.fromMap(Map<String, dynamic> data) {
    image = data['image'];
    toastName = data['toastname'];
  }
}