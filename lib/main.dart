import 'package:edumaster/app/routes.dart';
import 'package:edumaster/core/theme/app_theme.dart';
import 'package:edumaster/core/theme/theme_app_cubit/theme_app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const EduMaster());
}

class EduMaster extends StatelessWidget {
  const EduMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeAppCubit(),
        ),
      ],
      child:
          BlocBuilder<ThemeAppCubit, ThemeAppState>(builder: (context, state) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: state is ThemeAppInitial
              ? AppTheme.lightTheme
              : AppTheme.darkTheme,
          // home: SplashView(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Nady"),
        actions: [
          IconButton(
              onPressed: () {
                context.read<ThemeAppCubit>().changeTheme();
              },
              icon: Icon(Icons.safety_check))
        ],
      ),
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("SplashView"),
        ),
      ),
    );
  }
}
