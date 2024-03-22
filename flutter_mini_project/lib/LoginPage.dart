import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 35, top: 130),
          child: Text(
            'InterviewPro',
            style:
                TextStyle(color: Color.fromARGB(255, 24, 12, 12), fontSize: 35),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 35, top: 230),
          child: Text(
            'Welcome!\nPlease Login to your account.',
            style:
                TextStyle(color: Color.fromARGB(255, 44, 60, 77), fontSize: 22),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
                right: 35,
                left: 35),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 241, 251, 251),
                      filled: true,
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 241, 251, 251),
                    filled: true,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10)),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'signup');
                        },
                        child: Text('Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                            ))),
                    TextButton(
                        onPressed: () {},
                        child: Text('forgot Passowrd',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}