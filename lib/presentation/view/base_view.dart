import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/di/di.dart';

class BaseView<T extends Cubit<S>, S> extends StatefulWidget {
  final Widget Function(BuildContext context, S state, T viewModel) builder;
  final Function(T viewModel) setupViewModel;

  const BaseView(
      {Key? key, required this.builder, required this.setupViewModel})
      : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState<T, S>();
}

class _BaseViewState<T extends Cubit<S>, S> extends State<BaseView<T, S>> {
  late T viewModel;

  @override
  void initState() {
    viewModel = inject<T>();
    widget.setupViewModel(viewModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: viewModel,
      child: BlocBuilder<T, S>(
        key: const Key('BaseView_Consumer'),
        bloc: viewModel,
        builder: (context, state) {
          final viewModel = context.watch<T>();
          return widget.builder(context, state, viewModel);
        },
      ),
    );
  }
}
