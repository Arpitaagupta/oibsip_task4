//creating question model
//creating a simple class Question
class Question {
  //defining a question will look like
  //every question will have an id
  final String id;
  //every question will have a title, it's the question itself
  final String title;
  //every question will have options
  final Map<String, bool> options;
  //options will be like - {}'1':true, '2':false} = something like these

  //creating a constructor
  Question({
    required this.id,
    required this.title,
    required this.options,
  });

  //override the toString method to print the questions on console
  @override
  String toString() {
    return 'Questions(id: $id, title: $title, options: $options)';
  }
}
