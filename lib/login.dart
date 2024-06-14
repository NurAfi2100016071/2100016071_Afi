import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
  controller: _usernameController,
  decoration: const InputDecoration(
    filled: true,
    labelText: 'Username',
    labelStyle: TextStyle(color: Colors.blue), // Mengubah warna teks label menjadi biru
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue), // Mengubah warna border ketika TextField mendapat fokus menjadi biru
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue), // Mengubah warna border ketika TextField tidak dalam keadaan fokus menjadi biru muda
    ),
  ),
),
const SizedBox(height: 16),
TextField(
  controller: _passwordController,
  decoration: const InputDecoration(
    filled: true,
    labelText: 'Password',
    labelStyle: TextStyle(color: Colors.blue), // Mengubah warna teks label menjadi biru
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue), // Mengubah warna border ketika TextField mendapat fokus menjadi biru
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue), // Mengubah warna border ketika TextField tidak dalam keadaan fokus menjadi biru muda
    ),
  ),
  obscureText: true,
),
          OverflowBar(
          alignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
              },
              child: const Text(
                'CANCEL',
                style: TextStyle(
                      color: Colors.blue, // Ubah warna teks Daftar menjadi putih
                    ),
            ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Ubah warna tombol Daftar menjadi biru muda
                  ),
             child: const Text(
                    'NEXT',
              style: TextStyle(
                      color: Colors.white, // Ubah warna teks Daftar menjadi putih
                      fontWeight: FontWeight.bold,
                    ),
            ),
            ),
          ],
        ),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }
}
