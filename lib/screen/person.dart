import 'package:floor/floor.dart';

@entity
class Person {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String? fname;
  String? lname;
  Person({this.fname, this.lname, this.id});
}
