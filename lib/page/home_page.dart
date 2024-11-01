import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_taffakur/bloc/home_bloc.dart';
import 'package:task_taffakur/component/card_item.dart';
import 'package:task_taffakur/page/add_card_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<HomeBloc>(),
                child: const AddCardPage(),
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < (state.cards?.length ?? 0); i++)
                CardItem(
                  blurDegree: state.cards?[i].blurDegree ?? 0.0,
                  cardNumber: "8600 1421 1249 1924",
                  expiredDate: "02/21",
                  fullName: "Satorov Bahodir",
                  isCreating: false,
                  backgroundImage: state.cards?[i].cardBackgroundImage ?? "",
                  backgroundImageFromStorage:
                      state.cards?[i].cardBackgroundImageFromStorage,
                )
            ],
          ),
        );
      }),
    );
  }
}
