import 'package:flutter/material.dart';



class SearchBar extends StatelessWidget {
  SearchBar({
    super.key,
  });
final TextEditingController searchC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 300,

          child: TextField(
            controller: searchC,
            cursorColor: Colors.orange,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffEDEBE6),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  size: 25,
                ),
                hintText: "Search Products",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.orange,borderRadius: BorderRadius.circular(10),
          ),child: Icon(Icons.tune,fontWeight: FontWeight.w600,color: Color(0xff3B3939),),
        )
      ],
    );
  }
}