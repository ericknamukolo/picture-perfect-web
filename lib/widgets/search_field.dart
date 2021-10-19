import 'package:flutter/material.dart';
import 'package:picture_perfect_web/constants/colors.dart';
import 'package:picture_perfect_web/constants/constants.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController search = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: TextField(
        onSubmitted: (_) {},
        controller: search,
        autofocus: false,
        style: kNormalTextStyle,
        autocorrect: true,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Color(0xff01c5c4),
            ),
          ),
          hintText: 'Search...',
          hintStyle: kNormalTextStyle,
          filled: true,
          fillColor: Color(0xff373A39),
          contentPadding: EdgeInsets.all(18),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
