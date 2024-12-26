import 'dart:convert';

class Race {
  final int date;
  final String event;
  final String startTime;
  final List<String> distances;
  final String venue;

  Race({
    required this.date,
    required this.event,
    required this.startTime,
    required this.distances,
    required this.venue,
  });

  factory Race.fromJson(Map<String, dynamic> json) => Race(
        date: json['Date'],
        event: json['Event'],
        startTime: json['Start Time'].toString(),
        distances: (json['Distances'] as String)
            .split(',')
            .map((e) => e.trim())
            .toList(),
        venue: json['Venue'],
      );
}

class MonthlyRaces {
  final String month;
  final List<Race> races;

  MonthlyRaces({
    required this.month,
    required this.races,
  });

  factory MonthlyRaces.fromJson(String month, List<dynamic> json) =>
      MonthlyRaces(
        month: month,
        races: json.map((x) => Race.fromJson(x)).toList(),
      );
}

class RaceData {
  final Map<String, MonthlyRaces> racesByMonth;

  RaceData({
    required this.racesByMonth,
  });

  factory RaceData.fromJson(Map<String, dynamic> json) => RaceData(
        racesByMonth: json.map((key, value) =>
            MapEntry(key, MonthlyRaces.fromJson(key, value as List<dynamic>))),
      );
}

List<Race> parseRaces(String jsonData) {
  final parsed = json.decode(jsonData).cast<Map<String, dynamic>>();
  return parsed.map<Race>((json) => Race.fromJson(json)).toList();
}
