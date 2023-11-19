part of 'burger_king_block.dart';
class BurgerKingState{

}
 class BurgerKingInitial extends BurgerKingState{}
class BurgerKingLoading extends BurgerKingState{}
class BurgerKingLoaded extends BurgerKingState{
 final List<FoodInfo?> food;

  BurgerKingLoaded({required this.food});
}
