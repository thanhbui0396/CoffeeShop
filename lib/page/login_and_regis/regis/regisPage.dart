import 'package:coffee_shop/units/colors.dart';
import 'package:coffee_shop/units/dimensions.dart';
import 'package:flutter/material.dart';

class RegisPage extends StatefulWidget {
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

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured; // Prevents focus if tap on eye
    });
  }

  bool _obscuredConfirm = true;

  void _toggleObscuredConfirm() {
    setState(() {
      _obscuredConfirm = !_obscuredConfirm; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(color: Colors.white, fontSize: Dimensions.font30),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        leading: BackButton(
          color: Colors.white,
          style: ButtonStyle(
              iconSize: MaterialStatePropertyAll(Dimensions.iconSize30)),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20, vertical: Dimensions.height30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Great to see you here!',
                  style: TextStyle(
                      color: AppColors.textAndButtonColor,
                      fontSize: Dimensions.font24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                width: Dimensions.width230,
                child: Center(
                  child: Text(
                    'Let\'t set up your account in just a couple of steps.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Dimensions.font16),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    width: Dimensions.width120,
                    height: Dimensions.height60,
                    child: TextField(
                      controller: _firstnameController,
                      cursorColor: Colors.amber,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: AppColors.mainColor),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.iconSize30)),
                            borderSide:
                                const BorderSide(color: AppColors.mainColor)),
                        hoverColor: AppColors.mainColor,
                        labelText: 'Firstname',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.iconSize30))),
                      ),
                    )),
                SizedBox(
                  width: Dimensions.width20,
                ),
                Expanded(
                  child: SizedBox(
                    width: Dimensions.width100,
                    height: Dimensions.height60,
                    child: TextField(
                      controller: _lastnameController,
                      cursorColor: Colors.amber,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: AppColors.mainColor),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.iconSize30)),
                            borderSide:
                                const BorderSide(color: AppColors.mainColor)),
                        hoverColor: AppColors.mainColor,
                        labelText: 'Lastname',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.iconSize30))),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                height: Dimensions.height60,
                child: TextField(
                  controller: _emailController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30)),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30))),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  controller: _phoneController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.height30)),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Phone number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30))),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                height: Dimensions.height60,
                child: TextField(
                  obscureText: _obscured,
                  controller: _passwordController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30)),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30))),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: Dimensions.iconSize20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                height: Dimensions.height60,
                child: TextField(
                  obscureText: _obscuredConfirm,
                  controller: _confirmPasswordController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30)),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Confirm password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.iconSize30))),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscuredConfirm,
                        child: Icon(
                          _obscuredConfirm
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: Dimensions.iconSize20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: Dimensions.font30,
                        fontWeight: FontWeight.w300),
                  ),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: AppColors.textAndButtonColor,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      iconSize: Dimensions.iconSize30,
                      icon: const Icon(Icons.keyboard_arrow_right),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height40,
              ),
              Center(
                child: Text(
                  'Do you have an account?',
                  style: TextStyle(fontSize: Dimensions.font16),
                ),
              ),
              SizedBox(
                height: Dimensions.height5,
              ),
              InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: Dimensions.width90,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: Dimensions.font16),
                          ),
                          SizedBox(
                            width: Dimensions.width5,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: AppColors.mainColor,
                            size: Dimensions.iconSize20,
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
