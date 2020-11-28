import 'package:flutter/material.dart';

class FAQWidget extends StatelessWidget {
  // List<Map<String, String>> content;
  final Map<String, String> content;
  final bool isRTL;

  FAQWidget({this.content, this.isRTL});

  Widget _createContent(e) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Text(
                      e.key,
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  WidgetSpan(
                    child: Icon(Icons.question_answer_outlined),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              e.value,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: Divider(
              thickness: 1,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...content.entries.map((e) {
            return Directionality(
                textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
                child: _createContent(e));
          }).toList()
        ],
      ),
    );
  }
}
