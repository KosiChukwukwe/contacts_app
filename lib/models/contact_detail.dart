class ContactDetails {
  final String contactName;
  final String phoneNumber;
  final String imagePath;

  ContactDetails({
    required this.contactName,
    required this.phoneNumber,
    required this.imagePath
  });

  @override
  String toString(){
    return '$contactName $phoneNumber';
}

}



