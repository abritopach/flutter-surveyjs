// Packages to make a request and decode the JSON.

// Provides the Future class.
import 'dart:async';

// Provides the json variable we will use to decode the JSON string response.
import 'dart:convert';

// Provides the function we will use to make HTTP GET requests.
import 'package:http/http.dart' as http;

class SurveyProvider {

  static final ownerId = Uri.encodeFull("ownerId");
  static const accessKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  static const baseURL = "https://dxsurvey.com/api/MySurveys/";
  
  // Returns the list of active surveys.

  /*
  Function will return a List sometime in the future. It will make an HTTP request to the SurveyJS API and return
  a List of active surveys when done.
  */
  static Future<List> getActiveSurveys() async {
    // Make a HTTP GET request to the SurveyJS API.
    // Await basically pauses execution until the get() function returns a Response
    http.Response response = await http.get(baseURL + 'getActive?ownerId=' + ownerId + '&accessKey=' + accessKey);
    // Using the JSON class to decode the JSON String
    return JSON.decode(response.body);
  }

}