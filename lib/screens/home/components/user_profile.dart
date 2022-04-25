import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                        icon: const Icon(Icons.add_a_photo),
                        onPressed: () {},
                        color: Colors.black),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          50,
                        ),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(2, 4),
                          color: Colors.black.withOpacity(
                            0.3,
                          ),
                          blurRadius: 3,
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        TextFormField(
          initialValue: 'Your username',
          maxLength: 16,
          decoration: InputDecoration(
            icon: const Icon(Icons.account_circle_rounded),
            labelText: 'Username',
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 211, 112, 0),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 211, 112, 0)),
            ),
          ),
        ),
        TextFormField(
          initialValue: 'Your password',
          maxLength: 20,
          obscureText: true,
          decoration: InputDecoration(
            icon: const Icon(Icons.lock),
            labelText: 'Password',
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 211, 112, 0),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 211, 112, 0)),
            ),
          ),
        ),
        TextFormField(
          initialValue: 'Your email',
          decoration: InputDecoration(
            icon: const Icon(Icons.mail_outline),
            labelText: 'Email',
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 211, 112, 0),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 211, 112, 0)),
            ),
          ),
        ),
      ],
    );
  }
}
