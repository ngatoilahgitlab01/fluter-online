claas Student{
  int id_student;
  String student_name, gender, birt_date;

  Student({this.id_student, this.student_name, this.gender, this.birth_date});

  factory Student.fromJson(Map<String, dynamic> json){
    return Student(
      id_student: json['id_student'],
      student_name: json['student_name'],
      gender: josn['gender'],
      birth_date: json['birth_date'],
    );
  }
}