import 'package:flutter/material.dart';
import 'package:ucp1/login_page.dart';

class HomePage extends StatelessWidget {
  final String email;

  const HomePage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 14, 
                  color: Colors.white),
              ),
              Text(
                email,
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.w500, 
                  color: Colors.white),
              ),
            ],
          ),
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 255, 94, 0),
          leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/profile.png', height: 50, width:50),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.logout, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
                }
              ),
            )
          ]
        ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ],
        )
      ),
    );
  }
}