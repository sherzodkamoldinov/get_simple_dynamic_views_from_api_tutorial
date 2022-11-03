import 'package:dynamic_view/data/models/dynamic_view_model.dart';
import 'package:dynamic_view/utils/utility.dart';
import 'package:flutter/material.dart';

Widget buildWidget({required DynamicViewModel viewModel}) {
  var isBlack =
      viewModel.color.substring(1, viewModel.color.length) == '000000';
  switch (viewModel.type) {
    case 'container':
      return Container(
        width: viewModel.width.toDouble(),
        height: viewModel.height.toDouble(),
        decoration: BoxDecoration(
          color: HexColor.fromHex(viewModel.color),
        ),
        child: Text(
          viewModel.title,
          style: TextStyle(color: isBlack ? Colors.white : null),
        ),
      );
    case 'column':
      return Column(
        children: [
          Container(
            width: viewModel.width.toDouble(),
            height: viewModel.height.toDouble(),
            decoration: BoxDecoration(
              color: HexColor.fromHex(viewModel.color),
            ),
            child: Text(
              viewModel.title,
              style: TextStyle(color: isBlack ? Colors.white : null),
            ),
          ),
        ],
      );
    case 'sizedbox':
      return Container(
        decoration: BoxDecoration(
          color: HexColor.fromHex(viewModel.color),
        ),
        child: SizedBox(
          width: viewModel.width.toDouble(),
          height: viewModel.height.toDouble(),
          child: Text(
            viewModel.title,
            style: TextStyle(color: isBlack ? Colors.white : null),
          ),
        ),
      );
    case 'raw':
      return Row(
        children: [
          Container(
            width: viewModel.width.toDouble(),
            height: viewModel.height.toDouble(),
            decoration: BoxDecoration(
              color: HexColor.fromHex(viewModel.color),
            ),
            child: Text(
              viewModel.title,
              style: TextStyle(color: isBlack ? Colors.white : null),
            ),
          ),
        ],
      );
    default:
      return const Text('Nothing');
  }
}
