import 'package:age_calculator/age_calculator.dart';

class AgeCalculation {
  static DateDuration calculateAge(DateTime today, DateTime birthday) {
    // Calculate age using AgeCalculator.age method
    var age = AgeCalculator.age(
      birthday,
      today: today,
    );
    return age;

  }

  static DateDuration nextBirthday(DateTime today, DateTime birthday) {
    // Use timeToNextBirthday method to find time until next birthday
    DateDuration duration = AgeCalculator.timeToNextBirthday(birthday, fromDate: today);
    return duration;
  }

  static DateDuration dateDifference(DateTime fromDate, DateTime toDate) {
    // Find the difference between two dates
    DateDuration duration = AgeCalculator.dateDifference(
      fromDate: fromDate,
      toDate: toDate,
    );
    return duration;
  }

  // Calculate next birthday weekday as an integer
  static int nextbDate(DateTime today, DateDuration duration) {
    // Add the duration to the current date
    DateTime newDate = AgeCalculator.add(date: today, duration: duration);
    return newDate.weekday;  // Returns weekday as integer (1 = Monday, 7 = Sunday)
  }

  // nextBday(DateTime today,DateTime birthday){}
}


// class AgeCalculation {
//    calculateAge(DateTime today ,DateTime birthday){
//     AgeDuration age;
//     age=Age.dateDifferance(
//       fromDate:birthday,todate:today, includeToDate:false
//     );
//     print(age.days);
//     print(age.months);
//     print(age.years);
//     print('you age is $age');
//   }
// AgeDuration nextBirthday(DateTime today, DateTime birthday){
//   DateTime temp=DateTime(today.year,birthday.month,birthday.day);
//   DateTime nextBirthday=temp.isBefore(today)?Age.add(date:temp, duration: AgeDuration(year:1)):temp;
//   AgeDuration nextBirthdayDuration= Age.dateDifference(fromdate:today,toDate:nextBirthday);
//
//   return nextBirthdayDuration;
// }
// }
