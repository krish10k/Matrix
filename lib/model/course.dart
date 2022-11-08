// json data link --api
// https://gist.githubusercontent.com/krish10k/49277be4768df56b8349701027fd1449/raw/b99ecdc6715352a71c40df2fea0b320f6f45f08b/course.json

class Course {
  int? id;
  String? courseTitle;
  String? creator;
  String? startDate;
  String? endDate;
  String? time;

  Course(
      {this.id,
      this.courseTitle,
      this.creator,
      this.startDate,
      this.endDate,
      this.time});

  Course.fromJson(Map<String, dynamic> json) {
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
