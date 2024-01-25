import 'package:flutter_application_2/models/QuizQuestion.dart';

const List<QuizQuestion> questions = [
  QuizQuestion(
      'Who holds the record for the most Formula 1 World Championships as of 2022 ?',
      [
        "Lewis Hamilton",
        "Ayrton Senna",
        "Michael Schumacher",
        "Max Verstappen"
      ]),
// Lewis Hamilton
  QuizQuestion(
      'Which Grand Prix is known as the "Jewel in the Crown" and is held on a street circuit at night ?',
      [
        "Singapore Grand Prix",
        "Monaco Grand Prix",
        "Abu Dhabi Grand Prix",
        "Italian Grand Prix"
      ]),
//Singapore Grand Prix
  QuizQuestion(
      'What is the purpose of the Drag Reduction System (DRS) in Formula 1 ?', [
    "To enhance engine performance",
    "To improve tire grip",
    "To reduce aerodynamic drag and promote overtaking",
    "To increase fuel efficiency"
  ]),
  //To reduce aerodynamic drag and promote overtaking
  QuizQuestion(
      "Which team holds the record for the most Constructors' Championships in Formula 1 ?",
      ["Ferrari", "Mercedes", "Red Bull Racing", "McLaren"]),
  //Ferrari
  QuizQuestion(
      'What is the significance of the term "Pit Stop" in Formula 1 ?', [
    "A strategy where a driver enters the pit lane for tire changes, fuel, or repairs",
    "A designated area for team celebrations",
    "A place for drivers to take a break during the race",
    "A penalty zone for rule violations"
  ]) //A strategy where a driver enters the pit lane for tire changes, fuel, or repairs
  ,
  QuizQuestion(
      ' Which Formula 1 driver is known as the "Iceman" and hails from Finland ?',
      ["Kimi Räikkönen", "Valtteri Bottas", "Mika Häkkinen", "Nico Rosberg"]),
  QuizQuestion(
      "What is the minimum weight requirement for a car, including the driver, as per the regulations ?",
      ["700 kg", "600 kg", "800 kg", "900 kg"]),
  QuizQuestion(
      "What is the penalty for exceeding track limits consistently during a Formula 1 race?",
      [
        "Drive-through penalty",
        "Time penalty",
        "Warning from the race director",
        "Fine imposed on the team"
      ]),
  QuizQuestion("Who is the youngest Formula 1 World Champion in history?", [
    "Sebastian Vettel",
    "Ayrton Senna",
    "Lewis Hamilton",
    "Michael Schumacher"
  ])
];
