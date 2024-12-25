class MonthlyRaceData {
  final int date;
  final String event;
  final String startTime;
  final List<String> distances;
  final String venue;

  MonthlyRaceData({
    required this.date,
    required this.event,
    required this.startTime,
    required this.distances,
    required this.venue,
  });

  factory MonthlyRaceData.fromJson(Map<String, dynamic> json) {
    return MonthlyRaceData(
      date: json['Date'],
      event: json['Event'],
      startTime: json['Start Time'],
      distances: (json['Distances'] as String)
          .split(',')
          .map((e) => e.trim())
          .toList(),
      venue: json['Venue'],
    );
  }
}
