import 'package:flutter/material.dart';
import 'package:ucp1/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController namaLengkapController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController konfirmasiPasswordController = TextEditingController();
  bool _passwordVisible = true;
  bool _passwordConfirmVisible = true;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return  Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/login.png'), height: 150, width: 150,),
              Text('Daftar Akun Baru',
                style: TextStyle(
                  fontSize: 27, fontWeight: FontWeight.w500),
                ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Nama Lengkap',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                ),
              ), 
              const SizedBox(height: 13,),
              TextFormField(
                controller: namaLengkapController,
                decoration: InputDecoration(
                  hintText: 'Nama Lengkap',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.amber)
                  ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.person_2,
                        color: Colors.black,
                      ), 
                    ),
                  ),
                  validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Nama lengkap tidak boleh kosong';
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
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ), 
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
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ), 
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
              const SizedBox(height: 25,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ), 
                              ),
                            ),
                          obscureText: !_passwordVisible,
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return 'Password tidak boleh kosong';
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
                          child: Text('Konfirmasi Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500),
                          ),
                        ), 
                        const SizedBox(height: 13,),
                        TextFormField(
                          controller: konfirmasiPasswordController,
                          decoration: InputDecoration(
                            hintText: 'Konfirmasi Password',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Konfirmasi Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordConfirmVisible ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordConfirmVisible = !_passwordConfirmVisible;
                                });
                              },
                            ),
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ), 
                              ),
                            ),
                          obscureText: !_passwordConfirmVisible,
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return 'Konfirmasi Password tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ) 
                ),
              ],
              ),
              const SizedBox(height: 40),
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
                  child: Text('Daftar'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Text('Sudah memiliki akun? Silahkan',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Login disini!',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 94, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}