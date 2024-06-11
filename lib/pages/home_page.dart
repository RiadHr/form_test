import 'package:flutter/material.dart';
import 'package:form/utlis/global_Constant.dart';
import 'package:form/widget/custom_form_field.dart';
import 'package:form/utlis/input_validators.dart';
import 'package:form/widget/custom_signup_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("signUp ",),
              const SizedBox(height: 50,),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 20,),
                   CustomFormField(
                     hint: "name",
                     validator: (value) {
                       if(value!.isNotEmpty && value!.isNameValid){
                         return "enter a valid name";
                       }
                     },
                     inputFormater: GlobalConstant.inputFormaterNameField,
                   ),
                   const SizedBox(height: 20,),
                   CustomFormField(
                     hint: "email",
                     inputFormater: GlobalConstant.inputFormaterEmailField,
                     validator: (value) {
                       if(value!.isNotEmpty && value!.isEmailValid){
                         return "enter a valid email";
                       }
                     },
                   ),
                  const SizedBox(height: 20,),
                  CustomFormField(
                    hint: "telephone",
                    inputFormater: GlobalConstant.inputFormaterPhoneField,
                    validator: (value) {
                      if(value!.isNotEmpty && value!.isTelephoneValid){
                        return "enter a valid telephone";
                      }
                    },
                  ),
                    const SizedBox(height: 20,),
                    CustomFormField(
                      hint: "password",
                      validator: (value) {
                        if(value!.isNotEmpty && value!.isPasswordValid){
                          return "enter a valid password";
                        }
                      },
                    ),
                  ],
                ),
              ),
              CustomSignupButton(
                  buttonHandler:(){},
                  buttonContent: "SignUp")


          ],),
        ),
      ),
    );
  }


}
