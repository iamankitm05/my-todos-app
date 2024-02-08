import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int id;
  final bool isCompleted;
  final String text;

  const Todo({
    required this.id,
    required this.isCompleted,
    required this.text,
  });

  @override
  List<Object?> get props => [];
}
