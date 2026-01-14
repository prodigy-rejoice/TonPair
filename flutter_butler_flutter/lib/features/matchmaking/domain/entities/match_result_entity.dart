class MatchResult {
  final int id;
  final double score;
  final List<String> reasons;

  MatchResult({
    required this.id,
    required this.score,
    required this.reasons,
  });
}