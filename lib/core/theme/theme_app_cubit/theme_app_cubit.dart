import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_app_state.dart';

class ThemeAppCubit extends Cubit<ThemeAppState> {
  ThemeAppCubit() : super(ThemeAppInitial());

  bool themeType = false;
  changeTheme() async {
    themeType = await getTheme();
    themeType = !themeType;
    await saveTheme(themeType);
    emit(themeType ? ThemeAppInitial() : ThemeAppChange());
  }

  Future<void> saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('theme', isDark);
  }

  Future<bool> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return themeType = prefs.getBool('theme') ?? false; // false = Light
  }
}
