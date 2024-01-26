import 'package:flutter/material.dart';

class NursingDetails extends StatefulWidget {
  const NursingDetails(
      {super.key,
      required this.images,
      required this.cash,
      required this.dateandtime});
  final String images;
  final String cash;
  final String dateandtime;
  @override
  State<NursingDetails> createState() => _NursingDetailsState();
}

class _NursingDetailsState extends State<NursingDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.images), fit: BoxFit.cover)),
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 350,
                  child: Text(
                    '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.43,
                    color: Colors.yellow.shade100,
                    child: Text(
                      '介護付き有料老人ホーム',
                      style: TextStyle(
                          color: Colors.yellow.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    widget.cash,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.dateandtime,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '北海道札幌市東雲町3丁目916番地17号',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '交通費 300円',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '住宅型有料老人ホームひまわり倶楽部',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        size: 40,
                        color: Colors.grey,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
