import 'package:chatting_app/src/commons/button.widget.dart';
import 'package:chatting_app/src/commons/text_form_field.widget.dart';
import 'package:chatting_app/src/config/theme/color.theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(child: Padding(padding: EdgeInsets.all(8),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _topImage(),
              _createText(),
              _quickText(),
              SizedBox(height: 15,),
          _fullnameInput(),
          SizedBox(height: 15,),
          _emailInput(),
          SizedBox(height: 15,),
          _passwordInput(),
          SizedBox(height: 15,),
          _confirmPassword(),
          SizedBox(height: 15,),
_registerButton(),
_rowLoginButton(),
SizedBox(height: 15,),
_socialButton(),
SizedBox(height: 15,),
_googleImage(),
            ],
          ),
          ),
        ),
      ),
      )),
    
    );
  }
































  Row _googleImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          child: Image.network(
            'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
            width: 80,
            height: 80,
            // fit: BoxFit.cover,
          ),
        )
      ],
    );
  }

  Row _socialButton() {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey[350],
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Or Sign in with',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey[350],
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Row _rowLoginButton() {
    return Row(children: [
      Text("Already have an account?"),
      TextButton(
        onPressed: () {},
        child: Text('Login here'),
      )
    ]);
  }

  ButtonWidget _registerButton() {
    return ButtonWidget(
      title: 'Register',
      borderRadius: 20,
      backgroundColor: AppColorTheme.blueColor900,
      onPressed: () {},
    );
  }

  TextFormFieldWidgets _confirmPassword() {
    return TextFormFieldWidgets(
      labelText: 'Confirm Password',
      backgroundColor: AppColorTheme.whiteColor100,
      prefixIcon: Icons.password_outlined,
      isObsecure: true,
      borderColor: AppColorTheme.redColor950,
      enabledColor: Colors.grey.shade300,
      hintText: 'Confirm your password',
      borderRadius: 20,
    );
  }

  TextFormFieldWidgets _passwordInput() {
    return TextFormFieldWidgets(
      labelText: 'Password',
      backgroundColor: AppColorTheme.whiteColor100,
      prefixIcon: Icons.password_rounded,
      isObsecure: true,
      borderColor: AppColorTheme.redColor950,
      enabledColor: Colors.grey.shade300,
      hintText: 'Input your password',
      borderRadius: 20,
    );
  }

  TextFormFieldWidgets _emailInput() {
    return TextFormFieldWidgets(
      labelText: 'Email',
      backgroundColor: AppColorTheme.whiteColor100,
      prefixIcon: Icons.mail_outline_rounded,
      borderColor: AppColorTheme.primary500,
      // focusColor: Colors.blue.shade200,
      enabledColor: Colors.grey.shade300,
      hintText: 'Enter your email',
      borderRadius: 20,
    );
  }

  TextFormFieldWidgets _fullnameInput() {
    return TextFormFieldWidgets(
      labelText: 'Full Name',
      backgroundColor: AppColorTheme.whiteColor100,
      prefixIcon: Icons.person_outline_rounded,
      borderColor: AppColorTheme.primary500,
      // focusColor: Colors.blue.shade200,
      enabledColor: Colors.grey.shade300,
      hintText: 'Enter your full name',
      borderRadius: 20,
    );
  }

  Text _quickText() => Text('Quick and easy, register now!');

  Text _createText() {
    return Text(
      'Create a New Account',
      style: GoogleFonts.poppins(
        color: AppColorTheme.blueColor900,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Image _topImage() {
    return Image.network(
      'https://cdni.iconscout.com/illustration/premium/thumb/mobile-chatting-app-illustration-download-in-svg-png-gif-file-formats--smartphone-communication-messages-business-activities-pack-people-illustrations-4617901.png',
    );
  }
}
