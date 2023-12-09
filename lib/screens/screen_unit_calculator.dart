import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temperature_units/components/custom_widget/custom_input.dart';
import 'package:temperature_units/utilities/all_size.dart';
import 'package:temperature_units/utilities/all_text.dart';

import '../components/custom_widget/custom_exit_dialogue.dart';

class UnitCalculator extends StatefulWidget {
  const UnitCalculator({super.key});

  @override
  State<UnitCalculator> createState() => _UnitCalculatorState();
}

class _UnitCalculatorState extends State<UnitCalculator> {
  TextEditingController kelvinController = TextEditingController();
  TextEditingController celsiusController = TextEditingController();
  TextEditingController fahrenheitController = TextEditingController();
  TextEditingController rankineController = TextEditingController();
  TextEditingController newtonController = TextEditingController();
  TextEditingController romerController = TextEditingController();
  TextEditingController reaumurController = TextEditingController();
  TextEditingController delisleController = TextEditingController();

  @override
  void dispose() {
    kelvinController.dispose();
    celsiusController.dispose();
    fahrenheitController.dispose();
    rankineController.dispose();
    newtonController.dispose();
    romerController.dispose();
    reaumurController.dispose();
    delisleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AllText.unitCalculator),
      ),
      body: WillPopScope(
        onWillPop: () async {
          return await ExitDialogue.get(
            context: context,
            onTap: dialogueNav,
            title: AllText.exitApp,
            subTitle: AllText.exitAppSub,
          );
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          children: [
            CustomInput.get(
              context: context,
              controller: celsiusController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.celsius,
              onChanged: (value) {
                if (value.isEmpty) {
                  kelvinController.clear();
                  fahrenheitController.clear();
                  rankineController.clear();
                  newtonController.clear();
                  romerController.clear();
                  reaumurController.clear();
                  delisleController.clear();
                } else {
                  double celsius = double.parse(value);
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: kelvinController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.kelvin,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  fahrenheitController.clear();
                  rankineController.clear();
                  newtonController.clear();
                  romerController.clear();
                  reaumurController.clear();
                  delisleController.clear();
                } else {
                  double celsius = kelvinToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: fahrenheitController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.fahrenheit,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  kelvinController.clear();
                  rankineController.clear();
                  newtonController.clear();
                  romerController.clear();
                  reaumurController.clear();
                  delisleController.clear();
                } else {
                  double celsius =
                      fahrenheitToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: rankineController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.rankine,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  kelvinController.clear();
                  fahrenheitController.clear();
                  newtonController.clear();
                  romerController.clear();
                  reaumurController.clear();
                  delisleController.clear();
                } else {
                  double celsius = rankineToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: newtonController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.newton,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  kelvinController.clear();
                  fahrenheitController.clear();
                  rankineController.clear();
                  romerController.clear();
                  reaumurController.clear();
                  delisleController.clear();
                } else {
                  double celsius = newtonToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: romerController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.romer,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  kelvinController.clear();
                  fahrenheitController.clear();
                  rankineController.clear();
                  newtonController.clear();
                  reaumurController.clear();
                  delisleController.clear();
                } else {
                  double celsius = romerToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: reaumurController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.reaumur,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  kelvinController.clear();
                  fahrenheitController.clear();
                  rankineController.clear();
                  newtonController.clear();
                  romerController.clear();
                  delisleController.clear();
                } else {
                  double celsius = reaumurToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  delisleController.text =
                      celsiusToDelisle(value: celsius).toString();
                }
              },
            ),
            AllSize.gapH20,
            CustomInput.get(
              context: context,
              controller: delisleController,
              textInputType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: AllText.delisle,
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                  kelvinController.clear();
                  fahrenheitController.clear();
                  rankineController.clear();
                  newtonController.clear();
                  romerController.clear();
                  reaumurController.clear();
                } else {
                  double celsius = delisleToCelsius(value: double.parse(value));
                  celsiusController.text = celsius.toString();
                  kelvinController.text =
                      celsiusToKelvin(value: celsius).toString();
                  fahrenheitController.text =
                      celsiusToFahrenheit(value: celsius).toString();
                  rankineController.text =
                      celsiusToRankine(value: celsius).toString();
                  newtonController.text =
                      celsiusToNewton(value: celsius).toString();
                  romerController.text =
                      celsiusToRomer(value: celsius).toString();
                  reaumurController.text =
                      celsiusToReaumur(value: celsius).toString();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  double celsiusToKelvin({required double value}) {
    return value + 273.15;
  }

  double celsiusToFahrenheit({required double value}) {
    return value * 9 / 5 + 32;
  }

  double celsiusToRankine({required double value}) {
    return (value + 273.15) * 9 / 5;
  }

  double celsiusToNewton({required double value}) {
    return value * 33 / 100;
  }

  double celsiusToRomer({required double value}) {
    return value * 21 / 40 + 7.5;
  }

  double celsiusToReaumur({required double value}) {
    return value * 4 / 5;
  }

  double celsiusToDelisle({required double value}) {
    return (100 - value) * 3 / 2;
  }

  double kelvinToCelsius({required double value}) {
    return value - 273.15;
  }

  double fahrenheitToCelsius({required double value}) {
    return (value - 32) * 5 / 9;
  }

  double rankineToCelsius({required double value}) {
    return (value - 491.67) * 5 / 9;
  }

  double newtonToCelsius({required double value}) {
    return value * 100 / 33;
  }

  double romerToCelsius({required double value}) {
    return (value - 7.5) * 40 / 21;
  }

  double reaumurToCelsius({required double value}) {
    return value * 5 / 4;
  }

  double delisleToCelsius({required double value}) {
    return 100 - value * 2 / 3;
  }

  void dialogueNav() {
    SystemNavigator.pop();
  }

}
