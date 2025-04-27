import 'package:flutter/material.dart';
import 'package:ucp1/register_page.dart';
import 'package:ucp1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = true;

  @override
  void initState(){
    super.initState();
  }

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
              Text('SELAMAT DATANG KEMBALI',
                style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w500),
                ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),            
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  label: Text('Email'),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                ),
              ), 
              const SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
              const SizedBox(height: 60),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {     
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomePage(
                          email: emailController.text,
                        )));
                    }    
                  }, 
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    minimumSize: Size(200, 60),
                    backgroundColor: Colors.orange[700]
                  ),
                  child: Text('Masuk'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Text('Belum memiliki akun? Silahkan',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: Text('Daftar disini!',
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