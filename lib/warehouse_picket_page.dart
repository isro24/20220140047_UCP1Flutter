import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WarehousePicketPage extends StatefulWidget {
  final String email;
  const WarehousePicketPage({
    super.key,
    required this.email,
  });

  @override
  State<WarehousePicketPage> createState() => _WarehousePicketPageState();
}

class _WarehousePicketPageState extends State<WarehousePicketPage> {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController tugasPiketController = TextEditingController();

  Future<void> _selectDate(BuildContext context)async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2028),
    );

    setState(() {
      tanggalController.text = "${pickedDate?.day}/${pickedDate?.month}/${pickedDate?.year}";
    });
  }

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email;
  }
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
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Nama Anggota',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Pilih Tanggal',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: tanggalController,
                decoration: InputDecoration(
                  hintText: 'Pilih Tanggal',
                  label: const Text('Pilih Tanggal'),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  prefixIcon: Icon(
                    MdiIcons.calendarCheck,
                    color: Colors.grey,
                  ),
                ),
                onTap: (){
                  _selectDate(context);
                },
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Tanggal tidak boleh kosong';
                  }
                  return null;
                }
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Tugas Piket',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        TextFormField(  
                        controller: tugasPiketController,
                        decoration: InputDecoration(
                          hintText: 'Tugas Piket',
                          label: const Text('Tugas Piket'),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.amber),
                          ),
                        ),
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Tugas tidak boleh kosong';
                          }
                          return null;
                        }
                      ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 170,
                    child: FilledButton(
                      onPressed: (){
                    
                      }, 
                      style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      minimumSize: Size(170, 55),
                      backgroundColor: Colors.orange[700]
                    ),
                      child: Text('Tambah'),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
    );
  }
}