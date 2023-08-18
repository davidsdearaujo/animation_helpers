import 'dart:math';

class InterpolationController {
  final double begin;
  final double end;

  const InterpolationController({
    required this.begin,
    required this.end,
  });

  ///It applies the Linear Interpolation formula [[click to read more about it]](https://www.cuemath.com/linear-interpolation-formula/)
  ///It can be used to create animations [example](https://dartpad.dev/?id=f2c14f4da20f3b72eb82e0d136dd9343):
  ///F(x) = y0 + ((y1 - y0) / (x1 - x0)) * (x - x0);
  double linear(
    double x, {
    required double begin,
    required double end,
  }) {
    return begin + ((end - begin) / (this.end - this.begin)) * (x - this.begin);
  }

  /// The same as `linear()` but it applies `clamp()` function in the result
  double linearClamped(
    double x, {
    required double begin,
    required double end,
  }) {
    return linear(x, begin: begin, end: end).clamp(
      min(begin, end),
      max(begin, end),
    );
  }
}
