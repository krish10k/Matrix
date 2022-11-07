class course {
  int? id;
  String? courseTitle;
  String? creator;
  String? startDate;
  String? endDate;
  String? time;

  course(
      {this.id,
      this.courseTitle,
      this.creator,
      this.startDate,
      this.endDate,
      this.time});

  course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseTitle = json['course_title'];
    creator = json['creator'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_title'] = this.courseTitle;
    data['creator'] = this.creator;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['time'] = this.time;
    return data;
  }
}
