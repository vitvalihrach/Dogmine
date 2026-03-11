class DetectionResult {
  final bool isPoopDetected;
  final double confidence;
  final DateTime timestamp;

  DetectionResult({
    required this.isPoopDetected,
    required this.confidence,
    required this.timestamp,
  });
}