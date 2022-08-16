import 'package:flutter/material.dart';

class ContohTextField extends StatefulWidget {
  const ContohTextField({Key? key}) : super(key: key);

  @override
  State<ContohTextField> createState() => _ContohTextFieldState();
}

class _ContohTextFieldState extends State<ContohTextField> {
  bool isHiddenPassword = true;

  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text Field",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.all(40),
            child: const Text(
              "Contoh Login",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              label: const Text(
                "Email",
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              prefixIcon: const Icon(
                Icons.email,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passC,
            autocorrect: false,
            obscureText: isHiddenPassword,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              prefixIcon: const Icon(
                Icons.lock,
                size: 20,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isHiddenPassword
                        ? isHiddenPassword = false
                        : isHiddenPassword = true;
                  });
                },
                icon: isHiddenPassword
                    ? const Icon(
                        Icons.visibility,
                      )
                    : const Icon(
                        Icons.visibility_off,
                      ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint(
                "{Email: \"${emailC.text}\", Password: \"${passC.text}\"}",
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
            child: const Text(
              "LOGIN",
            ),
          ),
        ],
      ),
    );
  }
}
