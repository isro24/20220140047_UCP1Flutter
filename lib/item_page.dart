import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  final TextEditingController tanggalController = TextEditingController();

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendataan Barang', 
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
          padding: EdgeInsets.all(16.0) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Align(
                alignment: Alignment.centerLeft,
                child: Text('Tanggal Transaksi',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: tanggalController,
                decoration: InputDecoration(
                  hintText: 'Tanggal Transaksi',
                  label: const Text('Tanggal Transaksi'),
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
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: 'Jenis Transaksi',
                  label: const Text('Jenis Transaksi'),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                ),
                items: [
                ],
                onChanged: (value) {},
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: 'Jenis Barang',
                  label: const Text('Jenis Barang'),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                ),
                items: [
                ],
                onChanged: (value) {},
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
                          child: Text('Jumlah Barang',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Jumlah Barang',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Jumlah Barang',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            ),
                        ),
                      ],
                    ) 
                ),
                const SizedBox(width: 10,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Harga Satuan',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Harga Satuan',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Harga Satuan',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Rp.',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ) 
                  ),
                ],
              ),
              const SizedBox(height: 60),
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
                  child: Text('Submit'),
                ),
              ),
          ],
        ),
      )
      ),
    );
  }
}