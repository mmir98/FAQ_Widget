import 'package:flutter/material.dart';

class FAQWidget extends StatelessWidget {
  // List<Map<String, String>> content;
  final Map<String, String> content;
  final bool isRTL;
  final Icon icon;

  FAQWidget({this.content, this.isRTL, this.icon});

  Widget _createContent(e, BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Theme.of(context).backgroundColor,
      elevation: 10,
      margin: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // RichText(
            //   text: TextSpan(
            //     children: [
            //       WidgetSpan(
            //         child: icon,
            //       ),
            //       WidgetSpan(
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(
            //               vertical: 2, horizontal: 5),
            //           child: Text(e.key,
            //               style: Theme.of(context).accentTextTheme.bodyText1),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
                Container(
                  width: MediaQuery.of(context).size.width * 0.83,
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    e.key,
                    style: Theme.of(context).accentTextTheme.bodyText1,

                  ),
                ),
              ],
            ),
            Text(e.value, style: Theme.of(context).accentTextTheme.bodyText2),
          ],
        ),
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
                child: _createContent(e, context));
          }).toList()
        ],
      ),
    );
  }
}
