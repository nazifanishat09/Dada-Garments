import 'package:flutter/material.dart';



class CustomSearchBarWidget extends StatelessWidget {
  const CustomSearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(
          flex: 10,
          child: TextField(
            //controller: searchC,
            cursorColor: Colors.orange,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(contentPadding: EdgeInsets.zero,
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
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ),
        Expanded(flex: 2,
          child: Container(
            height: 48,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.orange,borderRadius: BorderRadius.circular(10),
            ),child: Icon(Icons.tune,fontWeight: FontWeight.w600,color: Color(0xff3B3939),),
          ),
        )
      ],
    );
  }
}