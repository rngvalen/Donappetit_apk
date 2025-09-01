import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFFFEFAE0),
              Color(0xFFFEFAE0),
              Color(0xFFFEFAE0),
              Color(0xFFB1AB86),
              Color(0xFF819067),
              Color(0xFF0A400C),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xFF0A400C),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Form(
              key: globalKey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${dotenv.env['URL_DEV']}',
                      style: TextStyle(fontSize: 40),
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(hint: Text('Correo')),
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(hint: Text('Contraseña')),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.go('/register');
                      },
                      child: Text('enviar'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
