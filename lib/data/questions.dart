import 'package:flutter_apps/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widget',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using Android Studio for Android and Xcode for iOS'
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that doesn\'t depend on data'
    ],
  ),
  QuizQuestion(
    'What widget should you try to use more often: StatefulWidget or Stateless Widget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above'
    ],
  ),
  QuizQuestion(
    'What happens if you change data in StalessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'The nested StatefulWidgets are updated'
    ],
  ),
  QuizQuestion(
    'How should you update data inside StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling update State()'
    ],
  ),
];
