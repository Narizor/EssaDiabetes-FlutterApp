import 'package:flutter/material.dart';

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
