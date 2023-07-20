import 'package:coffee_shop/models/data_regis.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/colors.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisPage extends StatefulWidget {
  static const routerName = '/regisPage';
  const RegisPage({Key? key}) : super(key: key);

  @override
  State<RegisPage> createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  final TextEditingController _firstnameController = TextEditingController();

  final TextEditingController _lastnameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscured = true;

  void handleRegis() {
    final email = _emailController.text;
    final name = '${_firstnameController.text} ${_lastnameController.text}';
    final password = _passwordController.text;
    final rePassword = _confirmPasswordController.text;
    const group_id = '64b8be54b8426f15351e5837';
    const id_app = '648deb5c4992aaaa9b8a165d';
    if (email.isNotEmpty && password.isNotEmpty && password == rePassword) {
      DataRegis dataRegis = DataRegis(
        email: email,
        name: name,
        password: password,
        rePassword: rePassword,
        group_id: group_id,
        id_app: id_app,
      );

      Provider.of<AuthProvider>(context, listen: false).register(dataRegis);
    }
  }

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured; // Prevents focus if tap on eye
    });
  }

  bool obscuredConfirm = true;

  void _toggleObscuredConfirm() {
    setState(() {
      obscuredConfirm = !obscuredConfirm; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        leading: BackButton(
          color: Colors.white,
          style: const ButtonStyle(iconSize: MaterialStatePropertyAll(30)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Great to see you here!',
                  style: TextStyle(
                      color: AppColors.textAndButtonColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 230,
                child: Center(
                  child: Text(
                    'Let\'t set up your account in just a couple of steps.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    width: 120,
                    height: 60,
                    child: TextField(
                      controller: _firstnameController,
                      cursorColor: Colors.amber,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: AppColors.mainColor),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(color: AppColors.mainColor)),
                        hoverColor: AppColors.mainColor,
                        labelText: 'Firstname',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SizedBox(
                    width: 100,
                    height: 60,
                    child: TextField(
                      controller: _lastnameController,
                      cursorColor: Colors.amber,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: AppColors.mainColor),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(color: AppColors.mainColor)),
                        hoverColor: AppColors.mainColor,
                        labelText: 'Lastname',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  controller: _emailController,
                  cursorColor: Colors.amber,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  controller: _phoneController,
                  cursorColor: Colors.amber,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Phone number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  obscureText: _obscured,
                  controller: _passwordController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  obscureText: obscuredConfirm,
                  controller: _confirmPasswordController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Confirm password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscuredConfirm,
                        child: Icon(
                          obscuredConfirm
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: AppColors.textAndButtonColor,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      iconSize: 30,
                      icon: const Icon(Icons.keyboard_arrow_right),
                      color: Colors.white,
                      onPressed: handleRegis,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Do you have an account?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                    width: 90,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                color: AppColors.mainColor, fontSize: 16),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: AppColors.mainColor,
                            size: 20,
                          )
                        ]),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
