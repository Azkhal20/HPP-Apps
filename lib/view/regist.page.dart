import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegistPage extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/logo-taxcenter.png',
                width: 209,
                height: 81,
              ),
              SizedBox(height: 50),
              Container(
                height: 560,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  color: Color(0xFFFFFFFF),                  
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Text('Buat Akun Anda', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            'Email',
                            style: TextStyle(
                            fontWeight: FontWeight.w600, 
                            fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: FormBuilderTextField(
                        key: Key('email'),
                        name: 'email',
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(),
                          ),
                          hintText: 'Masukkan Email Anda*',
                          ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: 'Email wajib diisi'),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            'Username',
                            style: TextStyle(
                            fontWeight: FontWeight.w600, 
                            fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: FormBuilderTextField(
                        key: _formKey,
                        name: 'username',
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(),
                          ),
                          hintText: 'Masukkan Nama Anda*',
                          ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: 'Username wajib diisi'),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            'Nomor Telepon',
                            style: TextStyle(
                            fontWeight: FontWeight.w600, 
                            fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(),
                          ),
                          hintText: 'Masukkan Nama Anda *',
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
