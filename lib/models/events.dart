class RaceEvent {
  final String event;
  final String distances;
  final String date;
  final String venue;
  final String startTime;

  RaceEvent({
    required this.event,
    required this.venue,
    required this.distances,
    required this.date,
    required this.startTime,
  });

  factory RaceEvent.fromJson(Map<String, dynamic> json) {
    return RaceEvent(
        event: json['Event'],
        venue: json['Venue'],
        distances: json['Distances'],
        date: json['Date'],
        startTime: json['Start Time']);
  }
}
