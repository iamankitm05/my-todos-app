import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todos_app/routes/app_routes.dart';
import 'package:my_todos_app/routes/bloc/app_routes_state.dart';

class AppRoutesCubit extends Cubit<AppRoutesState> {
  AppRoutesCubit() : super(AppRoutesState(routes: AppRoutes().router));
}
