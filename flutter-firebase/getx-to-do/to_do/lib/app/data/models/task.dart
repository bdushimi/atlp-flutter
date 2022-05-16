class Task {
  final String title;
  final String color;
  final int icon;
  final List<dynamic>? todos; // The ? indicates that this field can be null.

  Task(
      {required this.title,
      required this.color,
      required this.icon,
      this.todos});

  Task copyWith(
          {String? title, String? color, int? icon, List<dynamic>? todos}) =>
      Task(
          title: title ?? this.title,
          color: color ?? this.color,
          icon: icon ?? this.icon,
          todos: todos ?? this.todos);
}
