part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  final Weather weather;
  const WeatherSuccess({required this.weather});

  @override
  List<Object> get props => [weather];
}

final class WeatherBlocLoading extends WeatherState {}

final class WeatherBlocFailer extends WeatherState {}
