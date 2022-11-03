import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:week6_task_one/models/contact_detail.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final List<ContactDetails> contacts = [
    ContactDetails(
        contactName: "Audrey",
        phoneNumber: "+2348056788991",
        imagePath: "assets/images/female1.jpeg"),
    ContactDetails(
        contactName: "Anselem",
        phoneNumber: "+2348023488991",
        imagePath: "assets/images/male1.jpeg"),
    ContactDetails(
        contactName: "Annette",
        phoneNumber: "+23480012388991",
        imagePath: "assets/images/female2.jpeg"),
    ContactDetails(
        contactName: "Basil",
        phoneNumber: "+2347045688991",
        imagePath: "assets/images/male2.jpeg"),
    ContactDetails(
        contactName: "Benneth",
        phoneNumber: "+2347078988991",
        imagePath: "assets/images/female3.jpeg"),
    ContactDetails(
        contactName: "Bridgette",
        phoneNumber: "+2347023488991",
        imagePath: "assets/images/female4.jpeg"),
    ContactDetails(
        contactName: "Charles",
        phoneNumber: "+2349045687721",
        imagePath: "assets/images/male3.jpeg"),
    ContactDetails(
        contactName: "Catherine",
        phoneNumber: "+2349078982251",
        imagePath: "assets/images/female5.jpeg"),
    ContactDetails(
        contactName: "Camelot",
        phoneNumber: "+2349023486571",
        imagePath: "assets/images/male4.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Contacts',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25,
            color: Colors.white,
            fontFamily: 'Montserrat',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Gap(20),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/account.JPG"),
                    ),
                    const Gap(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Kosi Chukwukwe",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Montserrat',

                          ),
                        ),
                        const Gap(4),
                        Text(
                          "My Account",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(20),
                const Divider(
                  thickness: 0.15,
                  color: Colors.grey,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          contact.imagePath,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        contact.contactName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      subtitle: Text(
                        contact.phoneNumber,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.phone),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 0.15,
                      color: Colors.grey,
                    );
                  },
                  itemCount: contacts.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
