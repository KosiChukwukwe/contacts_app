class ContactDetails {
  String contactName;
  String phoneNumber;
  String imagePath;

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



