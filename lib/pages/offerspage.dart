import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Offer(
          title: "Pixa",
          description: "Boa",
        ),
        Offer(
          title: "Vagina dacom chicolate",
          description: "Damn g",
        ),
        Offer(
          title: "Vagina dacom chicolate",
          description: "Damn g",
        ),
        Offer(
          title: "Vagina dacom chicolate",
          description: "Damn g",
        ),
        Offer(
          title: "Vagina dacom chicolate",
          description: "Damn g",
        ),
        Offer(
          title: "Vagina dacom chicolate",
          description: "Damn g",
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  //Properties
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          color: Colors.brown.shade200,
          elevation: 7,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/background.png"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.yellow.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.yellow.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
