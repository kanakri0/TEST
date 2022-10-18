import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var passwordController = TextEditingController();
  var emailController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0))),
                    prefixIcon: Icon(Icons.email),
                  ),
                  onFieldSubmitted: (String value) {
                    print('value');
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0))),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account ?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register Now'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
