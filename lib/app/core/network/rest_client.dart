import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times.dart';
import 'package:beebloom_water_tracker/app/core/network/beebloom/models/get_drink_water_plan_execution_times_response.dart';
import 'package:beebloom_water_tracker/app/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(
    baseUrl:
        'http://beebloomprod-env.eba-5ydprapm.ap-south-1.elasticbeanstalk.com/')
abstract class BeebloomRestClient {
  factory BeebloomRestClient(Dio dio, {String baseUrl}) = _BeebloomRestClient;

  @GET('/plans/planroutinetemplates/drinkwater')
  Future<List<GetDrinkWaterPlanExecutionTimesResponse>>
      getDrinkWaterPlanExecutions(
          @Queries(encoded: true) Map<String, dynamic> params);
}

@singleton
class BeebloomService {
  late BeebloomRestClient beebloomRestClient;
  late DioClient dioClient;

  BeebloomService() {
    dioClient = DioClient();
    beebloomRestClient = BeebloomRestClient(dioClient.dio);
  }

  Future<List<GetDrinkWaterPlanExecutionTimesResponse>> getDrinkWaterPlanExecutions(
      GetDrinkWaterPlanExecutionTimesRequest request) {
    return beebloomRestClient
        .getDrinkWaterPlanExecutions(request.toJson(request));
  }
}
