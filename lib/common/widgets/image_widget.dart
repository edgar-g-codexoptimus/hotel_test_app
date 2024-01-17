// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/loading_indicator_widget.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    required List<String> images,
  })  : _images = images;

  final List<String> _images;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  int _activePageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
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

  Widget _imagesWidget() => CarouselSlider.builder(
        itemCount: widget._images.length,
        options: CarouselOptions(
          height: 270.0,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) => _changeIndex(index),
        ),
        itemBuilder: (context, index, realIndex) => Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          width: MediaQuery.sizeOf(context).width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              widget._images[index],
              fit: BoxFit.fill,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress != null ? loadingIndicatorWidget() : child,
              errorBuilder: (context, error, stackTrace) => Center(
                child: Icon(
                  Icons.photo,
                  color: Colors.black,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
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
