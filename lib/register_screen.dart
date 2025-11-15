import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/Back Menu.png", height: 22, width: 22),
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
        centerTitle: true,
        title: Container(
          height: 35,
          width: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/Only Dada.png"),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 77, vertical: 15),
              child: Container(
                height: 21,
                width: 236,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5F5F5F),
                        ),
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5F5F5F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 3,),
                  ),
                  Expanded(child: Divider(thickness: 3, color: Color(0xffF4A758))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "Let’s Get Started!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5F5F5F),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 7),
              child: Text(
                "Create an account.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff757575),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 17),
              child: Text(
                "Name",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff242424),
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  labelStyle: TextStyle(
                    color: Color(0xffC7C7C7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 17, top: 15 ),
              child: Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff242424),
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your phone number",
                  labelStyle: TextStyle(
                    color: Color(0xffC7C7C7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 12),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff242424),
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Color(0xffD1D1D1),
                  ),
                  labelText: "Enter Password",
                  labelStyle: TextStyle(
                    color: Color(0xffC7C7C7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17,right: 17,top: 30,bottom: 17),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF4A758),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Color(0xff0000001A), width: 1),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff222222),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Or",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17,right: 17,top: 25,bottom: 10),
              child: Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[50],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Color(0xff0000001A), width: 1),
                ),
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        height: 20,
                        width: 20,
                        image: AssetImage("assets/Google__G__logo.png")),
                    Text(
                      "Sign in with google",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff222222),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17,right: 17,top: 5,bottom: 10),
              child: Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[50],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Color(0xff0000001A), width: 1),
                ),
                child: Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        height: 30,
                        width: 30,
                        image: AssetImage("assets/fb_logo.png")),
                    Text(
                      "Sign in with facebook",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff222222),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff222222),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF4A758),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
