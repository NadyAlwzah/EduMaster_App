import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_app_state.dart';

class ThemeAppCubit extends Cubit<ThemeAppState> {
  ThemeAppCubit() : super(ThemeAppInitial());

  bool themeType = true;
  changeTheme() {
    themeType = !themeType;
    emit(themeType ? ThemeAppInitial() : ThemeAppChange());
  }
}
