import 'package:flutter/material.dart';
import 'package:test_pmobi/feature/first_screen/widget/products.dart';
import 'package:test_pmobi/feature/first_screen/widget/selected_kategoria.dart';

class BurgerKing extends StatefulWidget {
  const BurgerKing({super.key});

  @override
  State<BurgerKing> createState() => _BurgerKingState();
}

class _BurgerKingState extends State<BurgerKing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бургер Кинг'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SelectedCategory(),
              Products(),
            ],
          ),
        ),
      ],
    );
  }
}
