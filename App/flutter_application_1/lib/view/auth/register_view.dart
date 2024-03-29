import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/viewmodel/auth_viewmodel.dart';
import 'login_view.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textFormField.dart';
import '../widgets/custom_button.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.only(left: 16.w, bottom: 30.h),
                onPressed: () {
                  Get.off(LoginView());
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(right: 16.w, left: 16.w, top: 32.h, bottom: 44.h),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomText(
                          text: 'Cadastrar',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 48.h,
                        ),
                        CustomTextFormField(
                          title: 'Nome',
                          hintText: 'Simão Tomás',
                          validatorFn: (value) {
                            if (value!.isEmpty || value.length < 4)
                              return 'Por favor escreva um nome valido.';
                            return null;
                          },
                          onSavedFn: (value) {
                            controller.name = value;
                          },
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        CustomTextFormField(
                          title: 'Email',
                          hintText: 'amostra@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                          validatorFn: (value) {
                            if (value!.isEmpty)
                              return 'Por favor escreva um email valido.';
                            return null;
                          },
                          onSavedFn: (value) {
                            controller.email = value;
                          },
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        CustomTextFormField(
                          title: 'Password',
                          hintText: '***********',
                          obscureText: true,
                          validatorFn: (value) {
                            if (value!.isEmpty || value.length < 6)
                              return 'Password muito curta.';
                            return null;
                          },
                          onSavedFn: (value) {
                            controller.password = value;
                          },
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        CustomButton(
                          'Cadastrar',
                          () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              controller.signUpWithEmailAndPassword();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
