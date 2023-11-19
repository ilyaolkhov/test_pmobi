import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/food_info.dart';

part 'state.dart';
part 'events.dart';

class BurgerKingBloc extends Bloc<BurgerKingEvent, BurgerKingState> {
  BurgerKingBloc() : super(BurgerKingInitial()) {
    on<BurgerKingEvent>((event, emit) {
      final food = FoodInfoList.getInfoFood();
      emit(BurgerKingLoaded(food: food));


    });
  }
}
