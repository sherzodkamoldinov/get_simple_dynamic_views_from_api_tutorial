import 'package:dynamic_view/cubit/dynamic_view_cubit.dart';
import 'package:dynamic_view/data/api/api_client.dart';
import 'package:dynamic_view/data/api/api_service.dart';
import 'package:dynamic_view/ui/widgets/build_dynamic_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dynamic View'),
      ),
      body: BlocProvider(
        create: (context) => DynamicViewCubit(
          ApiService(
            apiClient: ApiClient(),
          ),
        )..getDynamicViews(),
        child: BlocConsumer<DynamicViewCubit, DynamicViewState>(
          listener: (context, state) {
            print(state.status);
          },
          builder: (context, state) {
            if (state.status.isSubmissionSuccess) {
              return ListView.builder(
                itemCount: state.dynamicViews.length,
                itemBuilder: (context, index) {
                  var view = state.dynamicViews[index];
                  return buildWidget(viewModel: view);
                },
              );
            } else if (state.status.isSubmissionInProgress) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status.isSubmissionFailure) {
              return Center(
                child: Text('ERROR: ${state.errorText}'),
              );
            } else {
              return const Center(
                child: Text('No State'),
              );
            }
          },
        ),
      ),
    );
  }
}
