import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/global.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();

  FocusNode focusNode = FocusNode();
  String hintText = 'Search';

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        hintText = '';
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: p25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 34,
            width: MediaQuery.of(context).size.width - (safe * 2) * 2 - 34,
            decoration: BoxDecoration(
              color: cWhite,
              boxShadow: boxShadow2,
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextField(
              focusNode: focusNode,
              controller: controller,
              textAlignVertical: TextAlignVertical.center,
              style: sFootnote.copyWith(color: cDarkBlue.withOpacity(.5)),
              maxLines: 1,
              showCursor: true,
              cursorColor: cDarkBlue.withOpacity(.5),
              cursorHeight: 13,
              cursorWidth: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  top: 0,
                  left: p20,
                  right: p20,
                  bottom: 15,
                ),
                fillColor: Colors.transparent,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: sCaption1.copyWith(color: cDarkBlue.withOpacity(.5)),
                hintText: hintText,
                prefixIcon: SizedBox(
                  width: i14,
                  height: i14,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: cOrange,
                      width: i14,
                      height: i14,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: m20),
          InkWell(
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: cOrange,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/qr.svg',
                  width: i14,
                  height: i14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
