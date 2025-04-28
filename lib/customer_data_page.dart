import 'package:flutter/material.dart';
import 'package:ucp1/detail_customer_page.dart';

class CustomerDataPage extends StatefulWidget {
  const CustomerDataPage({super.key});

  @override
  State<CustomerDataPage> createState() => _CustomerDataPageState();
}

class _CustomerDataPageState extends State<CustomerDataPage> {

  final TextEditingController namaCustomerController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController provinsiController = TextEditingController();
  final TextEditingController kodePosController = TextEditingController();

  void clearTextFields(){
    namaCustomerController.clear();
    emailController.clear();
    noHpController.clear();
    alamatController.clear();
    provinsiController.clear();
    kodePosController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data pelanggan', 
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
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Nama Cust',
                      style: TextStyle(
                        fontWeight: FontWeight.w500),
                      ),
                  ),
                  const SizedBox(height: 13),
                  TextFormField(
                    controller: namaCustomerController,
                    decoration: InputDecoration(
                      hintText: 'Nama Cust',
                      label: Text('Nama Cust'),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Cust tidak boleh kosong';
                    }
                    return null;
                    },
                  ),
                  const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                          ),
                          validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Email tidak boleh kosong';
                          }
                          return null;
                          },
                        ),
                      ],
                    ) 
                ),
                const SizedBox(width: 15,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('No Hp',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          controller: noHpController,
                          decoration: InputDecoration(
                            hintText: 'No HP',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'No HP',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                          ),
                          validator: (value){
                          if (value == null || value.isEmpty){
                            return 'No HP tidak boleh kosong';
                          }
                          return null;
                          },
                        ),
                      ],
                    ) 
                ),
              ],
              ),
              const SizedBox(height: 30),
              Align(
               alignment: Alignment.centerLeft,
                    child: Text('Alamat',
                      style: TextStyle(
                        fontWeight: FontWeight.w500),
                      ),
                  ),
                  const SizedBox(height: 13),
                  TextFormField(
                    controller: alamatController,
                    decoration: InputDecoration(
                      hintText: 'Alamat',
                      label: Text('Alamat'),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Alamat tidak boleh kosong';
                    }
                    return null;
                    },
                ),
              const SizedBox(height: 30),
               Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Provinsi',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          controller: provinsiController,
                          decoration: InputDecoration(
                            hintText: 'Provinsi',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Provinsi',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                          ),
                          validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Provinsi tidak boleh kosong';
                          }
                          return null;
                          },
                        ),
                      ],
                    ) 
                ),
                const SizedBox(width: 15,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Kode Pos',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          controller: kodePosController,
                          decoration: InputDecoration(
                            hintText: 'Kode Pos',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Kode Pos',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                          ),
                          validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Kode Pos tidak boleh kosong';
                          }
                          return null;
                          },
                        ),
                      ],
                    ) 
                ),
              ],
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {     
                   
                }, 
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    minimumSize: Size(200, 60),
                    backgroundColor: Colors.orange[700]
                  ),
                  child: Text('Simpan'),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton (
                  onPressed: () {     
                    clearTextFields();
                  }, 
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    minimumSize: Size(200, 60),
                    backgroundColor: Colors.white
                  ),
                  child: Text('Reset',
                  style: TextStyle(
                    color: Colors.orange[700],),
                  ),
                ),
              ),
              ],
            ),
          ),
      )
    );
  }
}