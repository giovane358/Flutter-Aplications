import 'package:application_refuse_risk/data/widget/widget.dart';
import 'package:application_refuse_risk/ui/backgroud/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/controller/registerController.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return BackgroudScreen(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextCenter(),
              ContainerTextFiled(
                child: TextFormField(
                  controller: controller.razaoSocial,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Razão Social',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black.withOpacity(0.4)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo Obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              ContainerTextFiled(
                child: TextFormField(
                  controller: controller.cnpj,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'xx.xxx.xxx/xxxx-xx',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black.withOpacity(0.4)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo Obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              ContainerTextFiled(
                child: TextFormField(
                  controller: controller.emailRegister,
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
                      return 'Campo Obrigatório';
                    }
                    return null;
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
                      return 'Campo Obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              ContainerTextFiled(
                child: TextFormField(
                  controller: controller.confirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirma Senha',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black.withOpacity(0.4)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo Obrigatório';
                    }
                    if (value != controller.password.text) {
                      return 'As senhas não coincidem';
                    }
                    return null;
                  },
                ),
              ),
              ButtonRegister(
                child: GestureDetector(
                    onTap: () {
                      controller.register();
                    },
                    child: const Text(
                      'Registra-se',
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    )),
              ),
              const TextLoginContainer()
            ],
          ),
        ),
      ),
    ));
  }
}
