import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0 * 1, 0 * 1, 0 * 1, 17 * 1),
                width: double.infinity,
                height: 200 * 1,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * 1,
                      top: 0 * 1,
                      child: Align(
                        child: SizedBox(
                          width: 390 * 1,
                          height: 270 * 1,
                          child: Image.asset(
                            "assets/images/world.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 39 * 1,
                      top: 11 * 1,
                      child: SizedBox(
                        width: 328 * 1,
                        height: 37 * 1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(
                                  0 * 1, 1 * 1, 271.92 * 1, 0 * 1),
                              width: 21.08 * 1,
                              height: 18 * 1,
                              child: const Icon(
                                Icons.menu,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 35 * 1,
                              height: 37 * 1,
                              child: Icon(
                                Icons.edit,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 21,
                      top: 115,
                      child: Align(
                        child: SizedBox(
                          width: 80 * 1,
                          height: 84 * 1,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/default.png",
                              width: 80 * 1,
                              height: 84 * 1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(44, 0, 0, 0),
                child: const Text(
                  'Mis Alimentos',
                  style: TextStyle(
                    fontSize: 24 * 1,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * 1 / 1,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.fromLTRB(44 * 1, 14 * 1, 10 * 1, 0 * 1),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                          0 * 1, 0 * 1, 21 * 1, 15 * 1),
                      padding: const EdgeInsets.fromLTRB(
                          0 * 1, 0 * 1, 10 * 1, 0 * 1),
                      width: double.infinity,
                      height: 101 * 1,
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20 * 1),
                          topRight: Radius.circular(30 * 1),
                          bottomRight: Radius.circular(30 * 1),
                          bottomLeft: Radius.circular(30 * 1),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(
                                0 * 1, 0 * 1, 11 * 1, 0 * 1),
                            width: 78,
                            height: 101 * 1,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20 * 1),
                                bottomLeft: Radius.circular(20 * 1),
                              ),
                              child: Image.asset(
                                "assets/images/manzana.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(
                                0 * 1, 10 * 1, 0 * 1, 12 * 1),
                            width: 210 * 1,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 169 * 1,
                                  top: 0 * 1,
                                  child: Align(
                                    child: SizedBox(
                                      width: 41 * 1,
                                      height: 18 * 1,
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          height: 1.25 * 1 / 1,
                                          color: Color(0xffff9674),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0 * 1,
                                  top: 8 * 1,
                                  child: SizedBox(
                                    width: 174 * 1,
                                    height: 71 * 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 0 * 1, 6 * 1),
                                          child: const Text(
                                            'Mayo 15,2023',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 13 * 1,
                                              fontWeight: FontWeight.w300,
                                              height: 1.25 * 1 / 1,
                                              letterSpacing: 1.3 * 1,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 0 * 1, 11 * 1),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0 * 1,
                                                        0 * 1,
                                                        2 * 1,
                                                        1 * 1),
                                                width: 16 * 1,
                                                height: 14 * 1,
                                                child: Image.asset(
                                                  "assets/images/fecha.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const Text(
                                                'Manzana',
                                                style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15 * 1,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25 * 1 / 1,
                                                  letterSpacing: 0.75 * 1,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'comer todos los dias',
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14 * 1,
                                            fontWeight: FontWeight.w300,
                                            height: 1.25 * 1 / 1,
                                            letterSpacing: 1.4 * 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                          0 * 1, 0 * 1, 21 * 1, 17 * 1),
                      width: 315 * 1,
                      height: 217 * 1,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * 1,
                            top: 0 * 1,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(
                                  0 * 1, 0 * 1, 12 * 1, 0 * 1),
                              width: 315 * 1,
                              height: 101 * 1,
                              decoration: const BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20 * 1),
                                  topRight: Radius.circular(30 * 1),
                                  bottomRight: Radius.circular(30 * 1),
                                  bottomLeft: Radius.circular(30 * 1),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 0 * 1, 180 * 1, 0 * 1),
                                    width: 78,
                                    height: 101 * 1,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20 * 1),
                                        bottomLeft: Radius.circular(20 * 1),
                                      ),
                                      child: Image.asset(
                                        "assets/images/paltaFood.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 10 * 1, 0 * 1, 0 * 1),
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14 * 1,
                                        fontWeight: FontWeight.w300,
                                        height: 1.1725 * 1 / 1,
                                        color: Color(0xffff9674),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0 * 1,
                            top: 116 * 1,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(
                                  0 * 1, 0 * 1, 12 * 1, 0 * 1),
                              width: 315 * 1,
                              height: 101 * 1,
                              decoration: const BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20 * 1),
                                  topRight: Radius.circular(30 * 1),
                                  bottomRight: Radius.circular(30 * 1),
                                  bottomLeft: Radius.circular(30 * 1),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 0 * 1, 180 * 1, 0 * 1),
                                    width: 78,
                                    height: 101 * 1,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20 * 1),
                                        bottomLeft: Radius.circular(20 * 1),
                                      ),
                                      child: Image.asset(
                                        "assets/images/atun.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 10 * 1, 0 * 1, 0 * 1),
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14 * 1,
                                        fontWeight: FontWeight.w300,
                                        height: 1.1725 * 1 / 1,
                                        color: Color(0xffff9674),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 95 * 1,
                            top: 16 * 1,
                            child: SizedBox(
                              width: 174 * 1,
                              height: 186 * 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 0 * 1, 0 * 1, 44 * 1),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // Mayo152024QHD (4:12)
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 0 * 1, 6 * 1),
                                          child: const Text(
                                            'Mayo 20,2023',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 13 * 1,
                                              fontWeight: FontWeight.w300,
                                              height: 1.25 * 1 / 1,
                                              letterSpacing: 1.3 * 1,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 0 * 1, 11 * 1),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0 * 1,
                                                        0 * 1,
                                                        2 * 1,
                                                        1 * 1),
                                                width: 16 * 1,
                                                height: 14 * 1,
                                                child: Image.asset(
                                                  "assets/images/fecha.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const Text(
                                                'Palta',
                                                style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15 * 1,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25 * 1 / 1,
                                                  letterSpacing: 0.75 * 1,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'siempre en la ensalada',
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14 * 1,
                                            fontWeight: FontWeight.w300,
                                            height: 1.25 * 1 / 1,
                                            letterSpacing: 1.4 * 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 0 * 1, 6 * 1),
                                          child: const Text(
                                            'Mayo 25,2023',
                                            style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 13 * 1,
                                              fontWeight: FontWeight.w300,
                                              height: 1.25 * 1 / 1,
                                              letterSpacing: 1.3 * 1,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 0 * 1, 11 * 1),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // fecha1aN3 (4:19)
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0 * 1,
                                                        0 * 1,
                                                        2 * 1,
                                                        1 * 1),
                                                width: 16 * 1,
                                                height: 14 * 1,
                                                child: Image.asset(
                                                  "assets/images/fecha.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const Text(
                                                'Atun',
                                                style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15 * 1,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25 * 1 / 1,
                                                  letterSpacing: 0.75 * 1,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          // cancunbeachmexicoeMu (4:17)
                                          '1 vez al dia en la cena',
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14 * 1,
                                            fontWeight: FontWeight.w300,
                                            height: 1.25 * 1 / 1,
                                            letterSpacing: 1.4 * 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 153 * 1,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * 1,
                            top: 0 * 1,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(
                                  0 * 1, 0 * 1, 12 * 1, 0 * 1),
                              width: 315 * 1,
                              height: 101 * 1,
                              decoration: const BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20 * 1),
                                  topRight: Radius.circular(30 * 1),
                                  bottomRight: Radius.circular(30 * 1),
                                  bottomLeft: Radius.circular(30 * 1),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 0 * 1, 180 * 1, 0 * 1),
                                    width: 78,
                                    height: 101 * 1,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20 * 1),
                                        bottomLeft: Radius.circular(20 * 1),
                                      ),
                                      child: Image.asset(
                                        "assets/images/pollo.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 10 * 1, 0 * 1, 0 * 1),
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        height: 1.1725 * 1 / 1,
                                        color: Color(0xffff9674),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 260,
                            top: 36 * 1,
                            child: SizedBox(
                              width: 68 * 1,
                              height: 117 * 1,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0 * 1,
                                    top: 45,
                                    child: Align(
                                      alignment: FractionalOffset.center,
                                      child: Container(
                                        width: 68 * 1,
                                        height: 64 * 1,
                                        decoration: const BoxDecoration(
                                          color: Colors.blue, // Color azul
                                          shape: BoxShape.circle,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Acción a realizar al presionar el botón
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            backgroundColor: Colors.blue,
                                            padding: const EdgeInsets.all(
                                                1), // Color azul
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // group13yqR (4:21)
                            left: 95 * 1,
                            top: 18 * 1,
                            child: SizedBox(
                              width: 174 * 1,
                              height: 71 * 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 0 * 1, 0 * 1, 6 * 1),
                                    child: const Text(
                                      'Mayo 29,2023',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 13 * 1,
                                        fontWeight: FontWeight.w300,
                                        height: 1.25 * 1 / 1,
                                        letterSpacing: 1.3 * 1,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0 * 1, 0 * 1, 0 * 1, 11 * 1),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // fecha1BAo (4:25)
                                          margin: const EdgeInsets.fromLTRB(
                                              0 * 1, 0 * 1, 2 * 1, 1 * 1),
                                          width: 16 * 1,
                                          height: 14 * 1,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/fecha.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'Pollo',
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15 * 1,
                                            fontWeight: FontWeight.w600,
                                            height: 1.25 * 1 / 1,
                                            letterSpacing: 0.75 * 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'de vez en cuando ',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 14 * 1,
                                      fontWeight: FontWeight.w300,
                                      height: 1.25 * 1 / 1,
                                      letterSpacing: 1.4 * 1,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
