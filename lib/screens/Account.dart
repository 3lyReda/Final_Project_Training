import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: const [
             SizedBox(
                height: 250,
                width: double.infinity,
                child: Image(fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1504805572947-34fad45aed93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
                )),
            CircleAvatar(
              radius: 50,
              backgroundImage:NetworkImage(
                 "https://images.unsplash.com/photo-1664574653006-4d7eb5f1a418?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),

              backgroundColor: Colors.white,
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Ali_Reda",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Center(
            child: Text(
              " Neque porro squamous est qui do-lorem\nipsum quia dolor sit amet, consectetur, adipisci",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ))
      ]),
    );

  }
}
