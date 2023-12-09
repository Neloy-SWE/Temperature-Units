import 'package:flutter/material.dart';
import 'package:temperature_units/utilities/all_text.dart';

import '../../utilities/all_size.dart';

class ExitDialogue {
  static get({
    required BuildContext context,
    required Function() onTap,
    required String title,
    required String subTitle,
  }) {
    return showDialog(
      context: context,
      builder: (builder) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                15,
              ),
            ),
          ),
          title: Text(title, textAlign: TextAlign.center),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 85),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            AllSize.gapH50,

            // yes no button
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    elevation: 0,
                    onPressed: onTap,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          7,
                        ),
                      ),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text(
                      AllText.yesCap,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                AllSize.gapW10,
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    elevation: 0,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          7,
                        ),
                      ),
                    ),
                    child: const Text(
                      AllText.noCap,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
