// ignore_for_file: prefer_single_quotes

import 'dart:async';

import 'package:flutter/material.dart';

class ImageNetworkSlider extends StatefulWidget {
  const ImageNetworkSlider({super.key, this.height, this.width, required this.imageUrls});

  final double? height;
  final double? width;
  final List<String> imageUrls;

  @override
  State<ImageNetworkSlider> createState() => _ImageNetworkSliderState();
}

class _ImageNetworkSliderState extends State<ImageNetworkSlider> {
  late PageController _pageController;
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    if (widget.imageUrls.length > 1) {
      _startTimer();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      _currentPage = (_currentPage + 1) % widget.imageUrls.length;
      _pageController.animateToPage(
        _currentPage,
        duration: Durations.long4,
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: widget.imageUrls.isEmpty
          ? const Center(child: Icon(Icons.image_not_supported, size: 64))
          : widget.imageUrls.length == 1
          ? _UniqueImage(imageUrl: widget.imageUrls.first)
          : PageView.builder(
              controller: _pageController,
              itemCount: widget.imageUrls.length,
              itemBuilder: (context, index) {
                final url = widget.imageUrls.elementAt(index);

                return _UniqueImage(imageUrl: url);
              },
            ),
    );
  }
}

class _UniqueImage extends StatelessWidget {
  const _UniqueImage({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return Stack(
          fit: StackFit.expand,
          children: [
            child,
            Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [Colors.transparent, Colors.black54],
                ),
              ),
            ),
          ],
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        debugPrint("Image error: $error || $stackTrace");
        return const Icon(Icons.error, size: 64);
      },
    );
  }
}
