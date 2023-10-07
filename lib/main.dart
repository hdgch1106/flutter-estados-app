import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/pages/pagina1_page.dart';
import 'package:estados_app/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UsuarioCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        title: 'Material App',
        initialRoute: "pagina1",
        routes: {
          "pagina1": (context) => const Pagina1Page(),
          "pagina2": (context) => const Pagina2Page(),
        },
      ),
    );
  }
}
