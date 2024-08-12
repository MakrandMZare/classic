import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Material(
//       child: Center(
//         child: Text(
//           "Login Page",
//           style: TextStyle(
//             fontSize: 20,
//             color: Color.blue,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value!;
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            // Perform login action
                            print('Email: $_email, Password: $_password');
                          }
                        },
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // body: Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: Form(
    //     key: _formKey,
    //     child: Column(
    //       children: <Widget>[
    //         TextFormField(
    //           decoration: InputDecoration(labelText: 'Email'),
    //           validator: (value) {
    //             if (value == null || value.isEmpty) {
    //               return 'Please enter your email';
    //             }
    //             return null;
    //           },
    //           onSaved: (value) {
    //             _email = value!;
    //           },
    //         ),
    //         TextFormField(
    //           decoration: InputDecoration(labelText: 'Password'),
    //           obscureText: true,
    //           validator: (value) {
    //             if (value == null || value.isEmpty) {
    //               return 'Please enter your password';
    //             }
    //             return null;
    //           },
    //           onSaved: (value) {
    //             _password = value!;
    //           },
    //         ),
    //         SizedBox(height: 20),
    //         ElevatedButton(
    //           onPressed: () {
    //             if (_formKey.currentState!.validate()) {
    //               _formKey.currentState!.save();
    //               // Perform login action
    //               print('Email: $_email, Password: $_password');
    //             }
    //           },
    //           child: Text('Login'),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
    // ),
    // ),
    // );
  }
}
