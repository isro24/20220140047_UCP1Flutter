import 'package:flutter/material.dart';

class WarehousePicketPage extends StatefulWidget {
  const WarehousePicketPage({super.key});

  @override
  State<WarehousePicketPage> createState() => _WarehousePicketPageState();
}

class _WarehousePicketPageState extends State<WarehousePicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piket Gudang', 
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