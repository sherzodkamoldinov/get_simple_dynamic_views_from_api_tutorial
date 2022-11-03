import 'package:bloc/bloc.dart';
import 'package:dynamic_view/data/api/api_service.dart';
import 'package:dynamic_view/data/models/dynamic_view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'dynamic_view_state.dart';

class DynamicViewCubit extends Cubit<DynamicViewState> {
  DynamicViewCubit(this._apiService)
      : super(
          const DynamicViewState(
            dynamicViews: [],
          ),
        );

  final ApiService _apiService;

  Future<void> getDynamicViews() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      List<DynamicViewModel> dynamicViewsData =
          await _apiService.getDynamicView();
      emit(
        state.copyWith(
            status: FormzStatus.submissionSuccess,
            dynamicViews: dynamicViewsData),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorText: e.toString(),
        ),
      );
    }
  }
}
