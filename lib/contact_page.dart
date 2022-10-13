import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  static const String id = 'contact_page';
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/profile.jpg'),
                          ),
                          title: Text('Rumi Xain',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Rubik Medium',
                                  color: Colors.black)),
                          subtitle: Text('Network Usage auto downloads'),
                          trailing: Text('11:25 pm'),
                        )
                      : const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/logo.png'),
                          ),
                          title: Text(
                            'John Die',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik Medium',
                                color: Colors.black),
                          ),
                          subtitle:
                              Text('Contact Us privately for conformation'),
                          trailing: Text(' 2:25 am'),
                        );
                }),
          )
        ],
      ),
    );
  }
}
