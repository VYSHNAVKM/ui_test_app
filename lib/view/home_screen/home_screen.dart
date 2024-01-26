import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_test_app/utils/nursing_details_list.dart';
import 'package:ui_test_app/view/home_screen/widgets/nursing_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  String Date = DateFormat('dd').format(now);
  String day = DateFormat('EEEE').format(now);
  @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: SearchBar(
        //     backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
        //     hintText: '北海道, 札幌市',
        //     hintStyle: MaterialStatePropertyAll(
        //         TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        //   ),
        //   actions: [
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.menu,
        //           color: Colors.black,
        //         )),
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.favorite_border_rounded,
        //           color: Colors.red,
        //         ))
        //   ],
        // ),
        ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: double.infinity,
          color: Colors.yellow.shade700,
          child: Center(
              child: Text(
            formattedDate,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade700,
                        borderRadius: BorderRadius.circular(15)),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            day,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Date,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
                itemCount: formattedDate.length),
          ),
        ),
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return NursingDetails(
                images: nursingdetailslist[index].image.toString(),
                cash: nursingdetailslist[index].cash.toString(),
                dateandtime: nursingdetailslist[index].dateandtime.toString(),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: 2)
      ],
    );
  }
}
