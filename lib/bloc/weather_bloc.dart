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
        final String apiKey = dotenv.env['API_KEY'] ?? 'No API key found';
        Position position = await Geolocator.getCurrentPosition();
        WeatherFactory weatherFactory =
            WeatherFactory(apiKey, language: Language.ENGLISH);
        Weather weather = await weatherFactory.currentWeatherByLocation(
            position.latitude, position.longitude);

        emit(WeatherSuccess(weather: weather));
      } catch (e) {
        emit(WeatherBlocFailer());
      }
    });
  }
}
