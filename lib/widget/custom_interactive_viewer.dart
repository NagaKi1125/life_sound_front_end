import 'package:flutter/material.dart';

class CustomInteractiveViewer extends StatefulWidget {
  final double scale;
  final Duration scaleDuration;
  final Curve curve;
  final Widget child;
  final TransformationController transformationController;
  final Function(double) onScaleChanged;

  const CustomInteractiveViewer({
    super.key,
    this.scale = 2.0,
    this.curve = Curves.fastLinearToSlowEaseIn,
    required this.scaleDuration,
    required this.child,
    required this.transformationController,
    required this.onScaleChanged,
  });

  @override
  State<CustomInteractiveViewer> createState() =>
      _CustomInteractiveViewerState();
}

class _CustomInteractiveViewerState extends State<CustomInteractiveViewer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Animation<Matrix4>? _zoomAnimation;
  TapDownDetails? _doubleTapDetails;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.scaleDuration,
    )..addListener(() {
        widget.transformationController.value = _zoomAnimation!.value;
      });
  }

  @override
  void dispose() {
    // widget.transformationController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    final newValue = widget.transformationController.value.isIdentity()
        ? _applyZoom()
        : _revertZoom();

    _zoomAnimation = Matrix4Tween(
      begin: widget.transformationController.value,
      end: newValue,
    ).animate(CurveTween(curve: widget.curve).animate(_animationController));
    _animationController.forward(from: 0);
  }

  Matrix4 _applyZoom() {
    final tapPosition = _doubleTapDetails!.localPosition;
    final translationCorrection = widget.scale - 1;
    final zoomed = Matrix4.identity()
      ..translate(
        -tapPosition.dx * translationCorrection,
        -tapPosition.dy * translationCorrection,
      )
      ..scale(widget.scale);
    return zoomed;
  }

  Matrix4 _revertZoom() => Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 1.0,
      maxScale: widget.scale,
      transformationController: widget.transformationController,
      onInteractionEnd: (scaleEndDetails) {
        double scale =
            widget.transformationController.value.getMaxScaleOnAxis();

        widget.onScaleChanged(scale);
      },
      child: GestureDetector(
        onDoubleTapDown: _handleDoubleTapDown,
        onDoubleTap: _handleDoubleTap,
        child: widget.child,
      ),
    );
  }
}
