import 'dart:io';

void main() {
  var myOptions = {
    "1": "Length conversation",
    "2": "temprature conversation",
    "3": "Area convrstion",
    "4": "weight conversation",
    "5": "Time conversation"
  };
  showOption(myOptions);
  showSecondOptions();
  wantToContinue(myOptions);
}

tempratureOption() {
  var tempOption = {"1": "fahrenheit to celcius", "2": "celcius to fahrenheit"};
  print(tempOption);
}

lenghtOptionsFun() {
  var lenghtOptions = {
    "1": "Meter to kilo meter",
    "2": "Kilo Meter to Meter",
    "3": "Feet to inches",
    "4": "inches to feet",
    "5": "centimeter to Meter",
    "6": "Meter to centimeter",
  };
  print(lenghtOptions);
  var selectOption = stdin.readLineSync();
  if (selectOption == '1') {
    return "You select meter to kilo meter option";
  } else if (selectOption == '2') {
    return "You Select Kilo Meter to Meter";
  } else if (selectOption == '3') {
    return "You Select Feet to inches";
  } else if (selectOption == '4') {
    return "You Select inches to feet";
  } else if (selectOption == '5') {
    return "You Select centimeter to Meter";
  } else if (selectOption == '6') {
    return "You Select Meter to centimeter";
  }
}

areaConversation() {
  var areaOption = {
    "1": "squre Miles to Squre yards",
    "2": "Squre yards to Sure Miles",
    "3": "Squre yards to squre feet",
    "4": "Squre feet to squre yards"
  };
  print(areaOption);
  var selectOption = stdin.readLineSync();
  if (selectOption == '1') {
    return "You select squre Miles to Squre yards option";
  } else if (selectOption == '2') {
    return "You Select Kilo Meter to Meter";
  } else if (selectOption == '3') {
    return "You Select Squre yards to Sure Miles";
  } else if (selectOption == '4') {
    return "You Select Squre yards to squre feet";
  } else if (selectOption == '5') {
    return "You Select Squre feet to squre yards";
  }
}

WeightConverstion() {
  var weightOption = {
    "1": "kg to Grams",
    "2": "Grams to kg",
    "3": "pounds to tons",
    "4": "tons to kg",
  };
  print(weightOption);
  var selectOption = stdin.readLineSync();
  if (selectOption == '1') {
    return "You select kg to Gramss option";
  } else if (selectOption == '2') {
    return "You Select Grams to kg";
  } else if (selectOption == '3') {
    return "You Select pounds to tons";
  } else if (selectOption == '4') {
    return "You Select tons to kg";
  }
}

TimeConversation() {
  var timeOption = {
    "1": "second to minutes",
    "2": "Minutes to hour",
    "3": "Seconds to Mintus",
    "4": "Millisecond to Minute",
    "5": "MiliSecond to hour"
  };
  print(timeOption);
  var selectOption = stdin.readLineSync();
  if (selectOption == '1') {
    return "You select second to minutes option";
  } else if (selectOption == '2') {
    return "You Select Minutes to hour";
  } else if (selectOption == '3') {
    return "You Select Seconds to Mintus";
  } else if (selectOption == '4') {
    return "You Select Millisecond to Minute";
  } else if (selectOption == '4') {
    return "You Select MiliSecond to hour";
  }
}

showOption(myOptions) {
  print("welcome to the console Application");
  print(myOptions);
}

showSecondOptions() {
  var secondOption = stdin.readLineSync();
  if (secondOption == "1") {
    return lenghtOptionsFun();
  } else if (secondOption == "2") {
    return tempratureOption();
  } else if (secondOption == '3') {
    return areaConversation();
  } else if (secondOption == '4') {
    return WeightConverstion();
  } else if (secondOption == "5") {
    return TimeConversation();
  }
}

wantToContinue(myOptions) {
  print('Do you want too continue Yes/No');
  var selectedOption = stdin.readLineSync();
  if (selectedOption == 'Yes') {
    return showOption(myOptions);
  } else if (selectedOption == 'No') {
    return "ThankS FOR USING APPLICATION";
  }
}
