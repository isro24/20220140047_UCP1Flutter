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
        title: Text('Detail ${widget.namaCustomer}', 
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
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                    child: Image.asset('assets/images/profile.png', height: 100, width:100),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.namaCustomer,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.email,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.noHP,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Alamat',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  readOnly: true,
                  initialValue: widget.alamat,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Provinsi',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            readOnly: true,
                            initialValue: widget.provinsi,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kode Pos',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            readOnly: true,
                            initialValue: widget.kodePos,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ],
              ),
          )),
    );
  }
}