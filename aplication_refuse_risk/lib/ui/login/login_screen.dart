import 'package:application_refuse_risk/data/controller/loginController.dart';
import 'package:application_refuse_risk/data/widget/widget.dart';
import 'package:application_refuse_risk/ui/backgroud/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return BackgroudScreen(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextCenter(),
            ContainerTextFiled(
              child: TextFormField(
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.4)),
                  border: InputBorder.none,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo Obrigatorio';
                  }
                },
              ),
            ),
            ContainerTextFiled(
              child: TextFormField(
                controller: controller.password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.4)),
                  border: InputBorder.none,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo Obrigatorio';
                  }
                },
              ),
            ),
            const EsqueciSenha(),
            ButtonLogin(
              chid: GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    controller.login();
                  }
                },
                child: const Text(
                  'Entrar',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const TextRegisterContainer()
          ],
        ),
      ),
    ));
  }
}
