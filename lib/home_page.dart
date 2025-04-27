import 'package:flutter/material.dart';
import 'package:ucp1/login_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                  Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false,
                  );
                }
              ),
            )
          ]
        ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.webp'),
                    fit: BoxFit.cover,
                  ),
                )
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      child: Card(
                        color: Color.fromARGB(255, 255, 94, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(MdiIcons.messageProcessingOutline, color: Colors.white, size: 40,),
                              Text(
                                'Data Piket',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 150,
                      child: Card(
                        color: Color.fromARGB(255, 255, 94, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(MdiIcons.viewGridPlus, color: Colors.white, size: 40,),
                              Text(
                                'Data Pelanggan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 255, 94, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.receipt_long, color: Colors.white, size: 40,),
                        Text(
                          'Barang Masuk/Keluar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}