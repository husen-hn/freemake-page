import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freemake_page/apps/home/home_repository.dart';
import 'package:freemake_page/controller/app/app_cubit.dart';
import 'package:freemake_page/templates/about_us/about_us.dart';
import 'package:freemake_page/templates/home/home.dart';
import 'package:freemake_page/templates/privacy_policy/privacy_policy.dart';
import 'package:freemake_page/templates/tems_of_use/tems_of_use.dart';

class App extends StatelessWidget {
  final HomeRepository homeRepository;
  const App({required this.homeRepository, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: homeRepository),
        ],
        child: MultiBlocProvider(providers: [
          BlocProvider<AppCubit>(
              create: (BuildContext abContext) =>
                  AppCubit(repository: abContext.read<HomeRepository>()))
        ], child: const AppView()));
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // change system statusBar & navBar color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFE9E9E9),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFE9E9E9),
        systemNavigationBarIconBrightness: Brightness.dark));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freemake - Best Freeware Alternative To Paid Media Software',
      routes: {
        '/': (context) => const Home(),
        '/about-us': (context) => const AboutUs(),
        '/privacy-policy': (context) => const PrivacyPolicy(),
        '/tems-of-use': (context) => const TemsOfUse(),
      },
    );
  }
}
