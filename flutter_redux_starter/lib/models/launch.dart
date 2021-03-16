class Launch {
  final String missionName;
  final String launchYear;
  final bool isSuccess;

  Launch({this.missionName, this.launchYear, this.isSuccess});

  factory Launch.fromJSON(Map<String, dynamic> json) => Launch(
        missionName: json['mission_name'] ?? 'Undefined',
        launchYear: json['launch_year'] ?? 'Undefines',
        isSuccess: json['launch_success'] ?? false,
      );
}
