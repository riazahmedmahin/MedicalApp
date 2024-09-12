import 'package:flutter/material.dart';

class TextFieldWithSortIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          //prefixIcon: Icon(Icons.search_off_outlined),
                            hintText: "Search...",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.lightBlueAccent),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50, // Adjust size as needed
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 127, 125, 195),
                      borderRadius: BorderRadius.circular(
                          5), // Adjust this value to control the roundness
                    ),
                    child: Center(
                      child: Icon(
                        Icons.sort_sharp, // Replace with your desired icon
                        color: Colors.white, // Icon color
                        size: 24, // Icon size
                      ),
                    ),
                  )
                ],
              );
  }
}
