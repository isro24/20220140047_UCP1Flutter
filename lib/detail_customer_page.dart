import 'package:flutter/material.dart';

class DetailCustomerPage extends StatefulWidget {
  final String namaCustomer;
  final String email;
  final String noHP;
  final String alamat;
  final String provinsi;
  final String kodePos;
  
  const DetailCustomerPage({
    super.key,
    required this.namaCustomer,
    required this.email,
    required this.noHP,
    required this.alamat,
    required this.provinsi,
    required this.kodePos,
  });

  @override
  State<DetailCustomerPage> createState() => _DetailCustomerPageState();
}

class _DetailCustomerPageState extends State<DetailCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ', 
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 94, 0),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}