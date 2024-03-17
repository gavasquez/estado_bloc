import 'package:estado_bloc/bloc/user/user_bloc.dart';
import 'package:estado_bloc/pages/pagina1_page.dart';
import 'package:estado_bloc/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc(),)
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'pagina1',
        routes: {
          'pagina1':(context) => const Pagina1Page(),
          'pagina2':(context) => const Pagina2Page(),
        },
        
      ),
    );
  }
}