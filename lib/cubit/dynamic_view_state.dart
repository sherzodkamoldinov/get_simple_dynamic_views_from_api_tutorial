part of 'dynamic_view_cubit.dart';

class DynamicViewState extends Equatable {
  const DynamicViewState({
    this.status = FormzStatus.pure,
    this.errorText = '',
    required this.dynamicViews,
  });

  DynamicViewState copyWith({
    FormzStatus? status,
    String? errorText,
    List<DynamicViewModel>? dynamicViews,
  }) {
    return DynamicViewState(
      status: status ?? this.status,
      errorText: errorText ?? this.errorText,
      dynamicViews: dynamicViews ?? this.dynamicViews,
    );
  }

  final FormzStatus status;
  final String errorText;
  final List<DynamicViewModel> dynamicViews;

  @override
  List<Object?> get props => [
        status,
        errorText,
        dynamicViews,
      ];
}
