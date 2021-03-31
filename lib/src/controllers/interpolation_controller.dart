class InterpolationController {
  final double begin;
  final double end;

  const InterpolationController({required this.begin, required this.end});

  double linear(double x, {required double begin, required double end}) => begin + ((end - begin) / (this.end - this.begin)) * (x - this.begin);
}
