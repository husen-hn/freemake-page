import 'package:bloc/bloc.dart';
import 'package:freemake_page/apps/helper/who_is_schema.dart';
import 'package:freemake_page/apps/home/home_repository.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required HomeRepository repository})
      : _repository = repository,
        super(AppInitial());

  final HomeRepository _repository;

  List<WhoIsSchema> get getWhoIsData => _repository.whoIsData;
}
