// Create a grid view who's row height is the largest child in that row
import 'dart:math';

import 'package:flutter/material.dart';

class CustomGridview extends StatelessWidget {
  const CustomGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandingRowGrid(
      crossAxisCount: 3,
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemBox(_data[index]);
      },
    );
  }
}

class ExpandingRowGrid extends StatelessWidget {
  const ExpandingRowGrid({
    super.key,
    required this.crossAxisCount,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int crossAxisCount;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        for (var i = 0; i < itemCount; i += crossAxisCount)
          SliverGroupRow(
            children: [
              for (int j = i; j < i + crossAxisCount; j++)
                if (j < min(i + crossAxisCount, itemCount))
                  itemBuilder(context, j)
                else
                  const SizedBox()
            ],
          )
      ],
    );
  }
}

class SliverGroupRow extends StatelessWidget {
  const SliverGroupRow({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final child in children) Expanded(child: child),
          ],
        ),
      ),
    );
  }
}

class ItemBox extends StatelessWidget {
  const ItemBox(this.height, {super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: const Placeholder(),
    );
  }
}

final _data = <double>[
  50, 100, 75, //
  10, 150, 25, //
  80, 45, 42, //
  42, 123 //
];
