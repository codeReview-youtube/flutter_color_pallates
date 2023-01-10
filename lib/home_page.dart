import 'package:bloc_tutorial/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'colors_pallates.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) => MaterialApp(
        theme: theme,
        home: const HomeContentPage(),
      ),
    );
  }
}

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const HomeContentTheme(),
    );
  }
}

class HomeContentTheme extends StatelessWidget {
  const HomeContentTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pallates colors'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (final pallate in pallates)
              GestureDetector(
                onTap: () {
                  context.read<ThemeCubit>().toggleTheme(pallate.key);
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          for (final boxColor in pallate.mainColors)
                            Container(
                              width: 50,
                              height: 75,
                              decoration: BoxDecoration(
                                color: boxColor,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 0),
                                    color: pallate.theme.shadowColor,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        pallate.name,
                        style: const TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(
                  IncrementCounter(),
                ),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(
                  DecrementCounter(),
                ),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
