import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ucp1/detail_item_page.dart';
import 'package:intl/intl.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController jumlahBarangController = TextEditingController();
  final TextEditingController hargaSatuanController = TextEditingController();
  int totalHarga = 0;

  void calculateTotalPrice() {
    int jumlahBarang = int.tryParse(jumlahBarangController.text) ?? 0;
    int hargaSatuan = int.tryParse(hargaSatuanController.text) ?? 0;
    setState(() {
      totalHarga = jumlahBarang * hargaSatuan;
    });
  }

  final Map<String, int> hargaBarangList = {
    'Carrier': 150000,
    'Sleeping Bag': 200000,
    'Tenda': 300000,
    'Sepaatu': 500000,
  };

  final List<String> jenisTransaksiList = [
    'Masuk',
    'Keluar',
  ];

  final List<String> jenisBarangList = [
    'Carrier',
    'Sleeping Bag',
    'Tenda',
    'Sepatu'
  ];

  String? selectedJenisTransaksi;
  String? selectedJenisBarang;

  Future<void> _selectDate(BuildContext context)async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      locale: const Locale('id'),
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2028),
    );

    setState(() {
      tanggalController.text = DateFormat('EEEE, d MMMM yyyy', 'id').format(pickedDate!);
    });
  }

  @override
  void initState(){
    super.initState();
    jumlahBarangController.addListener(calculateTotalPrice);
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
        key: _formKey,
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
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Tanggal tidak boleh kosong';
                  }
                }
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                value: selectedJenisTransaksi,
                decoration: InputDecoration(
                  hintText: 'Jenis Transaksi',
                  label: const Text('Jenis Transaksi'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                ),
                items: jenisTransaksiList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedJenisTransaksi = value;
                  });
                },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Pilih jenis transaksi';
                  }
                }
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                value: selectedJenisBarang,
                decoration: InputDecoration(
                  hintText: 'Jenis Barang',
                  label: const Text('Jenis Barang'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                ),
                items: jenisBarangList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedJenisBarang = value;
                    hargaSatuanController.text = hargaBarangList[value]!.toString(); 
                    calculateTotalPrice();
                  });
                },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Pilih jenis barang';
                  }
                }
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
                          controller: jumlahBarangController,
                          decoration: InputDecoration(
                            hintText: 'Jumlah Barang',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Jumlah Barang',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            ),
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Jumlah barang tidak boleh kosong';
                              }
                            }
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
                          controller: hargaSatuanController,
                          readOnly: true,
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
                          onChanged: (value) => calculateTotalPrice(),
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
                   if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailItemPage(
                        tanggal: tanggalController.text,
                        jenisTransaksi: jenisTransaksiList.firstWhere((element) => element == selectedJenisTransaksi),
                        jenisBarang: jenisBarangList.firstWhere((element) => element == selectedJenisBarang),
                        jumlahBarang: jumlahBarangController.text,
                        jenisHargaSatuan: hargaSatuanController.text,
                        totalHarga: totalHarga.toString(),
                      ),
                    ));
                    }
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