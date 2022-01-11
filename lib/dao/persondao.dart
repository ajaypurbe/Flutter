import 'package:sqlite_demo/screen/person.dart';

import 'package:floor/floor.dart';

@dao
abstract class PersonDao {
  @Query('Select * from Person')
  Future<List<Person>> findAllPersons();

  @Query('SELECT * FROM person WHERE id = :id')
  Future<Person> findPersonById(int id);
}
