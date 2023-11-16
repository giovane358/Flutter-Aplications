import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController razaoSocial = TextEditingController();
  final cnpj = MaskedTextController(mask: '00.000.000/0000-00');
  final TextEditingController emailRegister = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore db = FirebaseFirestore.instance;

  void register() async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailRegister.text,
        password: password.text,
      );
      User? user = userCredential.user;
      db.collection('user').doc(user!.uid).set({
        'razao': razaoSocial.text,
        'cnpj': cnpj.text,
        'email': emailRegister.text,
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
