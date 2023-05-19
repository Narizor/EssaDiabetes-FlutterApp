import 'dart:developer';

import 'package:first_app_flutter/theme.dart';
import 'package:first_app_flutter/widgets/trendingTripsList.widget.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: Column(
        children: const [
          Header(
            imgUser: 'assets/images/default.png',
          ),
          SizedBox(
            height: 50,
          ),
          WelcomeMessageContainer(),
          CategoriesListScroll(),
          TrendingMessage(),
          Expanded(child: TrendingTripsList())
        ],
      )),
      drawer: const DrawerContainer(),
    );
  }
}

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        right: false,
        child: Center(
          child: Text('SOON!!'),
        ),
      ),
    );
  }
}

class CategoriesListScroll extends StatelessWidget {
  const CategoriesListScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Row(children: [
          CategoryCard(
              categoryTitle: "Registro",
              categorySubTitle: "Alimentos",
              img: "assets/images/registroAlimentos.jpg",
              press: () {}),
          CategoryCard(
              categoryTitle: "Calculadora",
              categorySubTitle: "Carbohidratos",
              img: "assets/images/calculadoraCarbohidratos.jpg",
              press: () {}),
          CategoryCard(
              categoryTitle: "Planificación",
              categorySubTitle: "Comida",
              img: "assets/images/planificacionAlimentos.jpg",
              press: () {})
        ]),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categoryTitle,
    required this.categorySubTitle,
    required this.press,
    required this.img,
  }) : super(key: key);

  final String categoryTitle, categorySubTitle, img;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 20 / 2, bottom: 10 * 2),
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * 0.6,
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(40.0),
        //     color: const Color.fromRGBO(165, 195, 223, 1)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: const Color.fromRGBO(165, 195, 223, 1),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black
                  .withOpacity(0.3), // Ajusta la opacidad aquí (0.0 - 1.0)
              BlendMode
                  .darken, // Puedes cambiar el modo de fusión según tus necesidades
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "de",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                categorySubTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeMessageContainer extends StatelessWidget {
  const WelcomeMessageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Bienvenido",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          IconButton(
              iconSize: 35.0,
              onPressed: () {},
              color: kPrimaryColor,
              icon: const Icon(Icons.accessibility_new)),
        ],
      ),
    );
  }
}

class TrendingMessage extends StatelessWidget {
  const TrendingMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: const [
          Text(
            "Alimentos Saludables",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.imgUser,
  });
  final String imgUser;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, right: 8.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              iconSize: 35.0,
              color: Colors.grey[800],
              icon: const Icon(Icons.menu)),
          const Image(
            image: AssetImage("assets/images/essalud.png"),
            width: 50,
          ),
          GestureDetector(
            onTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
              // ignore: no_leading_underscores_for_local_identifiers
              final GoogleSignIn _googleSignIn = GoogleSignIn();
              FirebaseAuth.instance.signOut();
              _googleSignIn.signOut();
              log('Signout');
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imgUser),
            ),
          )
        ],
      ),
    );
  }
}
