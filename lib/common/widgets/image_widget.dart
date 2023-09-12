// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/error_widget.dart';
import 'package:hotel_test_app/common/widgets/loading_indicator_widget.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    required List<String> images,
    required PageController controller,
  })  : _controller = controller,
        _images = images;

  final List<String> _images;
  final PageController _controller;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  int _activePageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _imagesWidget(),
          _indicatorsWidget(),
        ],
      ),
    );
  }

  Widget _imagesWidget() => PageView.builder(
        itemCount: widget._images.length,
        controller: widget._controller,
        pageSnapping: true,
        physics: const ScrollPhysics(),
        onPageChanged: _changeIndex,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              widget._images[index],
              fit: BoxFit.fill,
              errorBuilder: (context, error, _) =>
                  errorWidget(Constants.ERROR_LOADING_IMAGE),
            ),
          );
        },
      );

  Widget _indicatorsWidget() => Container(
        margin: const EdgeInsets.all(8.0),
        height: 20.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget._images.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(3.0),
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(_getOpacity(index)),
                shape: BoxShape.circle,
              ),
            );
          },
        ),
      );

  void _changeIndex(int value) {
    setState(() {
      _activePageIndex = value;
    });
  }

  double _getOpacity(int index) {
    return 1 - ((_activePageIndex - index).abs() * 0.45);
  }
}
