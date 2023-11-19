import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pmobi/data/food_info.dart';
import 'package:test_pmobi/feature/first_screen/block/burger_king_block.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final _burgerKingBlock = BurgerKingBloc();
  @override
  void initState() {
    _burgerKingBlock.add(LoadBurgerKing());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        height: 700,
        child: BlocBuilder<BurgerKingBloc, BurgerKingState>(
          bloc: _burgerKingBlock,
          builder: (context, state) {
            if (state is BurgerKingLoaded) {
              return GridView.builder(
                  itemCount: state.food.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 300,
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            height: 170,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                state.food[index]!.image,
                                fit: BoxFit.fill,
                                width: 190,
                              ),
                            ),
                          ),
                          Container(
                            height: 130,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 46, 46, 46),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 20, left: 16, right: 16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    state.food[index]!.nameFood,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        state.food[index]!.price.toString(),
                                        style: theme.textTheme.titleLarge,
                                      ),
                                      (state.food[index]!.oldPrice == null)
                                          ? SizedBox()
                                          : Text(
                                              '${state.food[index]!.oldPrice}',
                                              style: theme.textTheme.titleSmall,
                                            ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
            }
            return CircularProgressIndicator(color: theme.primaryColor,);
          },
        ) //
        );
  }
}
