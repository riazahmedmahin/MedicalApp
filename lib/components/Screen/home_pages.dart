import 'package:flutter/material.dart';
import 'package:onboard_animation/wigets/category_itel.dart';
import 'package:onboard_animation/wigets/searchbar.dart';
import 'package:onboard_animation/wigets/UpcommingCard.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find your medicine\nspecialist",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 29),
              ),
              SizedBox(height: 10,),
            TextFieldWithSortIcon(),
            SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor specialist",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 22, 108, 207),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              calegoryItem(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcomming",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize:15,
                      color: Color.fromARGB(255, 22, 108, 207),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5,),
              DoctorCard(),
              SizedBox(
                height: 20,
              ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Doctor",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 15,
                      color: Color.fromARGB(255, 22, 108, 207),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar get Appbar {
    return AppBar(
      //backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 5, right: 8),
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(12)),
            child: Icon(
              Icons.menu_open,
              size: 20,
            )),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 9, bottom: 8, left: 12),
          child: CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/128/3135/3135715.png",
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Textfeild extends StatelessWidget {
  const Textfeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.search_off_sharp),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}

class calegoryItem extends StatelessWidget {
  calegoryItem({
    super.key,
  });
  final List _category = [
    "https://cdn-icons-png.flaticon.com/128/17515/17515114.png",
    "https://cdn-icons-png.flaticon.com/128/9774/9774024.png",
    "https://cdn-icons-png.flaticon.com/128/11646/11646240.png",
    "https://cdn-icons-png.flaticon.com/128/14228/14228770.png",
    "https://cdn-icons-png.flaticon.com/128/14949/14949202.png"
  ];

  final List _text = [
    'Neuro',
    'Cardio',
    'Dentist',
    'Or-tho',
    "Dermatology"
    //'Make Up'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemCount: _category.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            image: _category[index],
            text: _text[index],
          );
        },
        separatorBuilder: (_, __) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
