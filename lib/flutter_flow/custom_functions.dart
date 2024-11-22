import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime stringToDate(String dateString) {
  DateTime newDate = DateTime.parse(dateString).toUtc();
  return newDate;
}

String bestUseDate(
  String dayClose,
  String dayDue,
) {
// create a function that returns an string "From [date1] to [date2]". [date1] is based on dayClose argument + current month + current year.  [date2] is based on dayClose argument + current or next month + current year.
  // Get the current date
  DateTime now = DateTime.now();

  // Get the current month and year
  int currentMonth = now.month;

  int currentYear = now.year;

  // Parse the dayClose argument to an integer
  int closeDay = int.parse(dayClose);

  // Create a DateTime object for the start date
  DateTime startDate = DateTime(currentYear, currentMonth, closeDay);

  // Check if the dayDue argument is provided
  if (dayDue != null) {
    // Parse the dayDue argument to an integer
    int dueDay = int.parse(dayDue);

    // Create a DateTime object for the end date
    DateTime endDate = DateTime(currentYear, currentMonth, dueDay);

    // Check if the end date is before the start date
    if (endDate.isBefore(startDate)) {
      // Increment the month by 1
      endDate = DateTime(currentYear, currentMonth + 1, dueDay);
    }

    // Format the start and end dates
    String formattedStartDate = DateFormat('d/M/y').format(startDate);
    String formattedEndDate = DateFormat('d/M/y').format(endDate);

    // Return the formatted string
    return 'De $formattedStartDate até $formattedEndDate';
  } else {
    // Format the start date
    String formattedStartDate = DateFormat('d/M/y').format(startDate);

    // Return the formatted string with only the start date
    return 'A partir de $formattedStartDate';
  }
}

DateTime? getDateFromNow(int numberOfDays) {
  // get the date from now summing with numberOfDays
  // Get the current date
  DateTime now = DateTime.now();

  // Add the number of days to the current date
  DateTime newDate = now.add(Duration(days: numberOfDays));

  return newDate;
}

DateTime getDayDate(String day) {
  // complete the date using the day parameter with current month and year
  // Get the current date
  DateTime now = DateTime.now();

  // Get the current month and year
  int currentMonth = now.month;
  int currentYear = now.year;

  // Parse the day parameter to an integer
  int dayInt = int.parse(day);

  // Create a DateTime object for the complete date
  DateTime dayDate = DateTime(currentYear, currentMonth, dayInt);

  return dayDate;
}
