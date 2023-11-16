import 'package:application_refuse_risk/ui/login/login_screen.dart';
import 'package:application_refuse_risk/ui/singup/register_screen.dart';
import 'package:flutter/material.dart';

// Inicio dos Widget Login e Registrar-se

class ContainerField extends StatelessWidget {
  final Widget child;
  const ContainerField({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 170),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      child: child,
    );
  }
} //Widget Backgroud Login/register

class TextCenter extends StatelessWidget {
  const TextCenter({super.key});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      width: w.width * 1,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: const Text(
        'Recusar Risco',
        textAlign: TextAlign.center,
        textScaleFactor: 1.9,
        style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600),
      ),
    );
  }
} // widget Text Center

class ContainerTextFiled extends StatelessWidget {
  final Widget child;
  const ContainerTextFiled({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      width: w.width * 1,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}

class EsqueciSenha extends StatelessWidget {
  const EsqueciSenha({super.key});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      width: w.width * 1,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: const Text(
        'Esqueceu à Senha?',
        textAlign: TextAlign.right,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  final Widget chid;
  const ButtonLogin({super.key, required this.chid});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
        width: w.width * 1,
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.blue[200], borderRadius: BorderRadius.circular(29)),
        child: chid);
  }
}

class ButtonRegister extends StatelessWidget {
  final Widget child;
  const ButtonRegister({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      width: w.width * 1,
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.blue[200], borderRadius: BorderRadius.circular(29)),
      child:child,
    );
  }
}

class TextRegisterContainer extends StatelessWidget {
  const TextRegisterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ));
            },
            child: const Text(
              'Registra-se',
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class TextLoginContainer extends StatelessWidget {
  const TextLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  const LoginScreen(),
                  ));
            },
            child: const Text(
              'Entrar',
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
//Fim dos Widget Login e Registrar-se
