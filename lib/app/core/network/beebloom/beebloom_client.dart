import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@singleton
class BeebloomClient {
  Future<void> getDrinkWaterPlanExecutionTimes(
      GetDrinkWaterPlanExecutionTimesRequest request) async {
    final response = await http.get(Uri.http(
        'beebloomprod-env.eba-5ydprapm.ap-south-1.elasticbeanstalk.com',
        '/plans/planroutinetemplates/drinkwater', {
      'coffee': '1',
      'tea': '1',
      'start_time': '06:00:00',
      'end_time': '20:00:00',
      'hours': '3'
    }));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);
      return;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
