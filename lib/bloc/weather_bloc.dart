import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());

      try {
        // Fetch API key from the environment file
        final String? apiKey = dotenv.env['API_KEY'];
        if (apiKey == null || apiKey.isEmpty) {
          throw Exception('API key not found');
        }
        WeatherFactory weatherFactory =
            WeatherFactory(apiKey, language: Language.ENGLISH);
        Weather weather = await weatherFactory.currentWeatherByLocation(
            event.position.latitude, event.position.longitude);

        emit(WeatherSuccess(weather: weather));
      } catch (e) {
        // Log the error and emit the failure state with meaningful information
        emit(WeatherFailur(error: e.toString()));
      }
    });
  }
}
