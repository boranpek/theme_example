import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_example/app_theme.dart';
import 'package:theme_example/cubit/theme_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Material App',
            theme: state.themeData,
            home: Scaffold(
              appBar: AppBar(
                title: Text('Material App Bar'),
              ),
              body: Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<ThemeCubit>(context).changeTheme(appThemeData[AppTheme.BlueLight]);
                        },
                        child: Text("BlueLight"),
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<ThemeCubit>(context).changeTheme(appThemeData[AppTheme.BlueDark]);
                        },
                        child: Text("BlueDark"),
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<ThemeCubit>(context).changeTheme(appThemeData[AppTheme.GreenDark]);
                        },
                        child: Text("GreenLight"),
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<ThemeCubit>(context).changeTheme(appThemeData[AppTheme.GreenLight]);
                        },
                        child: Text("GreenDark"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
