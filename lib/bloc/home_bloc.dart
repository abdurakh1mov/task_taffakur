import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_taffakur/component/card_item.dart';
import 'package:task_taffakur/model/card_model.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<_SetData>(_setData);
  }

  Future<void> _setData(_SetData event, Emitter<HomeState> emit) async {
    List<CardModel> cards = List.from([...(state.cards ?? [])]);
    cards.add(CardModel(
      blurDegree: event.blurDegree,
      cardBackgroundImage: event.cardBackgroundImage,
      cardBackgroundImageFromStorage: event.cardBackgroundImageFromStorage,
      backgroundColor: event.backgroundColor,
    ));
    emit(state.copyWith(cards: cards));
  }
}
