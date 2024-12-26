class RaceEvent {
  final String event;
  final String distances;
  final String date;
  final String venue;

  RaceEvent({
    required this.event,
    required this.venue,
    required this.distances,
    required this.date,
  });

  factory RaceEvent.fromJson(Map<String, dynamic> json) {
    return RaceEvent(
      event: json['event'],
      venue: json['venue'],
      distances: json['distances'],
      date: json['date'],
    );
  }
}
