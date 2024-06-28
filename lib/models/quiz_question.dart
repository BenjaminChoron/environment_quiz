class QuizQuestion {
  QuizQuestion({
    required this.question,
    required this.options,
    required this.info,
  });

  final String question;
  final List<String> options;
  final String info;
}
