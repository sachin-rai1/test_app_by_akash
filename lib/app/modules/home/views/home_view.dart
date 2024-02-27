import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app_by_akash/app/data/widgets/mainlayout.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MainLayOut(
        beforeGradient: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.05),
            Center(
              child: Image.asset(
                "assets/png/appleWhite.png",
                height: h * 0.06,
              ),
            ),
            SizedBox(height: h * 0.05),
            const Text(
              "Apple Inc",
              style: TextStyle(fontSize: 24),
            ),
            const Text(
              "AAPL",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ToggleButtonsWidget(
              onFirstButtonPressed: () {},
              onSecondButtonPressed: () {},
            ),
            const SizedBox(height: 30),
            const Text(
              "Interact with missed meetings. ask questions and get summaries on crucial company calls",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 30),
            ToggleButtonsWidget(
              height: 30,
              firstButtonName: "Yearly",
              secondButtonName: "Quarterly",
              onFirstButtonPressed: () {
                controller.isYearlyPressed.value = true;
              },
              onSecondButtonPressed: () {
                controller.isYearlyPressed.value = false;
              },
            ),
          ],
        ),
        afterGradient: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Obx(() {
            return Column(
              children: [
                controller.isYearlyPressed.value == true
                    ?
                const MyTextWidgetWithoutCard(title: "", data1: "2023", data2: "2022", data3: "2021",)
                    :
                const MyTextWidgetWithoutCard(title: "",
                  data1: "Dec '23",
                  data2: "Sep '23",
                  data3: "Jun '23",),

                const MyTextWidget(title: "Revenue",
                  data1: "394B",
                  data2: '366B',
                  data3: '240B',),
                const MyTextWidget(title: "Gross Profit",
                  data1: "366B",
                  data2: '392B',
                  data3: '170B',),
                const MyTextWidget(title: "Net Income",
                  data1: "366B",
                  data2: '392B',
                  data3: '170B',),
                const MyTextWidget(title: "EBIDTA",
                  data1: "366B",
                  data2: '392B',
                  data3: '170B',),
                const MyTextWidget(title: "EPS",
                  data1: "366B",
                  data2: '392B',
                  data3: '170B',),

                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Align(
                      alignment:Alignment.bottomRight,
                      child: Text("All Figures in USD (\$)", style: TextStyle(color: Colors.white,fontSize: 10))),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget(
      {super.key, required this.title, required this.data1, required this.data2, required this.data3});

  final String title;
  final String data1;
  final String data2;
  final String data3;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildText(context, title, 0.20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildText(context, data1, 0.20),
                  _buildText(context, data2, 0.20),
                  _buildText(context, data3, 0.20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextWidgetWithoutCard extends StatelessWidget {
  const MyTextWidgetWithoutCard(
      {super.key, required this.title, required this.data1, required this.data2, required this.data3});

  final String title;
  final String data1;
  final String data2;
  final String data3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildText(context, title, 0.20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildText(context, data1, 0.20),
                _buildText(context, data2, 0.20),
                _buildText(context, data3, 0.20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildText(BuildContext context, String text, double widthFraction,{Color? color}) {
  return Text(
    text,
    style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:color?? Colors.grey),
  );
}


class ToggleButtonsWidget extends StatelessWidget {
  const ToggleButtonsWidget({
    Key? key,
    this.firstButtonName,
    this.secondButtonName,
    required this.onFirstButtonPressed,
    required this.onSecondButtonPressed, this.height,
  }) : super(key: key);

  final String? firstButtonName;
  final String? secondButtonName;
  final void Function() onFirstButtonPressed;
  final void Function() onSecondButtonPressed;
  final double? height;


  @override
  Widget build(BuildContext context) {
    RxBool firstButtonSelected = false.obs;
    RxBool secondButtonSelected = true.obs;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Obx(() {
          return MaterialButton(
            onPressed: () {
              firstButtonSelected.value = true;
              secondButtonSelected.value = false;
              onFirstButtonPressed();
            },
            color: firstButtonSelected.value
                ? Colors.cyan.shade200
                : Colors.white,
            height:height??45,

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              firstButtonName ?? 'Earning Calls',
              style: TextStyle(color:firstButtonSelected.value?Colors.brown: Colors.blueGrey),
            ),
          );
        }),
        const SizedBox(width: 20),
        Obx(() {
          return MaterialButton(
            onPressed: () {
              secondButtonSelected.value = true;
              firstButtonSelected.value = false;
              onSecondButtonPressed();
            },
            color: secondButtonSelected.value
                ? Colors.cyan.shade200
                : Colors.white,
            height:height??45,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              secondButtonName ?? 'Financials',
              style: TextStyle(color:secondButtonSelected.value?Colors.brown: Colors.blueGrey),
            ),
          );
        }),
      ],
    );
  }
}

// class ToggleButtonsWidget extends StatefulWidget {
//   const ToggleButtonsWidget(
//       {super.key, this.firstButtonName, this.secondButtonName, required this.onFirstButtonPressed, required this.onSecondButtonPressed});
//
//   @override
//   _ToggleButtonsWidgetState createState() => _ToggleButtonsWidgetState();
//   final String? firstButtonName;
//   final String? secondButtonName;
//   final void Function() onFirstButtonPressed;
//   final void Function() onSecondButtonPressed;
//
// }
// class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
//   late bool _firstButtonSelected;
//   late bool _secondButtonSelected;
//
//   @override
//   void initState() {
//     super.initState();
//     _firstButtonSelected = false;
//     _secondButtonSelected = true;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _firstButtonSelected = !_firstButtonSelected;
//               _secondButtonSelected = false;
//               widget.onSecondButtonPressed();
//             });
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: _firstButtonSelected
//                 ? Colors.cyan.shade200
//                 : Colors.grey,
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           ),
//           child: Text(
//             widget.firstButtonName ?? 'Earning Calls',
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//         const SizedBox(width: 20),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _secondButtonSelected = !_secondButtonSelected;
//               _firstButtonSelected = false;
//               widget.onSecondButtonPressed();
//             });
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: _secondButtonSelected
//                 ? Colors.cyan.shade200
//                 : Colors.grey,
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           ),
//           child: Text(
//             widget.secondButtonName ?? 'financials',
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }