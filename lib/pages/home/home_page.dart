import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:weather_app/app_config/app_images.dart';

import 'package:weather_app/model/res_forecast_model/res_forecast_model.dart';
import 'package:weather_app/pages/home/home_viewModel.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late HomeNotifier _viewModel;

  @override
  void initState() {
    _viewModel = ref.read(homeViewModel.notifier);
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel.initData();
    });
  }

  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeViewModel);
    var weatherModel = watch.weatherModel;
    var relatedWeatherModel = watch.relatedWeatherModel;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Visibility(
          visible: !watch.loaderStatus,
          replacement: Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator()),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.purple, Colors.purple.shade400, Colors.blue],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),
            child: Stack(
              children: [
                Positioned(
                    right: 20,
                    top: 50,
                    child: GestureDetector(
                      onTap: () {
                        _viewModel.initData();
                      },
                      child: Icon(
                        Icons.refresh,
                        size: 60,
                        color: Colors.white,
                      ),
                    )),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "${weatherModel?.name}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "${weatherModel?.main?.temp}°C",
                    style: const TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        weatherModel?.weather?.first.main ?? "",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Image.network(AppImages.imgUrl(
                          data: weatherModel?.weather?.first.icon ?? "")),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: relatedWeatherModel != null &&
                        (relatedWeatherModel?.forecastDataList?.length ?? 0) >
                            0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: const Text(
                            "Hourly Forecast",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...?relatedWeatherModel?.forecastDataList
                                  ?.map((data) {
                                return _buildTile(data: data);
                              })
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTile({required ForecastData data}) {
    var formattedDate =
        DateFormat("yyyy-MM-dd hh:mm:ss").parse(data?.dtText ?? "");
    var format = DateFormat("hh:mm a").format(formattedDate);

    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
            colors: [Colors.yellow.shade200, Colors.yellow.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(children: [
        Text("${data.forecastMain?.temp}°C"),
        Text("$format "),
        Text("${data.list?.first.main} "),
        Image.network(AppImages.imgUrl(data: data.list?.first.icon ?? "")),
      ]),
    );
  }
}
