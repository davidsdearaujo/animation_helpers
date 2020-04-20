import 'package:flutter/foundation.dart';

class InterpolationController {
  final double begin;
  final double end;

  InterpolationController({
    @required this.begin,
    @required this.end,
  })  : assert(begin != null),
        assert(end != null);
        
  ///F(x) = y0 + ((y1 - y0) / (x1 - x0)) * (x - x0);
  ///y1 = 
  double linear(
    double x, {
    @required double begin,
    @required double end,
  }) {
    assert(begin != null);
    assert(end != null);
    return begin + ((end - begin) / (this.end - this.begin)) * (x - this.begin);
  }
}
