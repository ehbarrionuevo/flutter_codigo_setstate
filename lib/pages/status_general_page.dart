import 'package:flutter/material.dart';

class StatusGeneralPage extends StatefulWidget {
  @override
  State<StatusGeneralPage> createState() => _StatusGeneralPageState();
}

class _StatusGeneralPageState extends State<StatusGeneralPage> {
  bool isFontWeight = false;
  bool isTextDecoration = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatusGeneral Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              height: 54.0,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xfff72585),
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
              ),
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: isFontWeight ? FontWeight.bold : FontWeight.normal,
                decoration: isTextDecoration
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
            ),
            const Divider(),
            const SizedBox(
              height: 14.0,
            ),
            // Checkbox(
            //   value: true,
            //   onChanged: (bool? value) {
            //     print(value);
            //   },
            // ),
            CheckboxListTile(
              value: isFontWeight,
              onChanged: (bool? value) {
                isFontWeight = value!;
                setState(() {});
              },
              title: Text(
                "Cambiar Font Weight:: $isFontWeight",
              ),
            ),
            CheckboxListTile(
              value: isTextDecoration,
              onChanged: (bool? value) {
                isTextDecoration = value!;
                setState(() {});
              },
              title: Text(
                "Cambiar TextDecoration:: $isFontWeight",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
