import 'package:flutter/material.dart';
import 'package:flutter_article_page_ui_design/custom_widgets.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      right: true,
      child: Scaffold(
        body: CFlex(
          direction: Axis.vertical,
          spacing: 0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CFlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: Stack(
                alignment: const Alignment(0, 0),
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    width: sWidth,
                    height: sHeight * 0.44,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://thumbs.dreamstime.com/b/white-house-washington-dc-south-lawn-view-32723491.jpg')),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: sWidth * 0.05,
                          right: sWidth * 0.05,
                          top: sHeight * 0.04,
                          bottom: sHeight * 0.02,
                        ),
                        child: buildUpper(sHeight, sWidth),
                      ),
                    ),
                  ),
                  Positioned(
                    top: sHeight * 0.42,
                    left: 0,
                    width: sWidth,
                    height: sHeight * 0.52,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: sHeight * 0.02,
                          horizontal: sWidth * 0.05,
                        ),
                        child: buildResults(),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        appBar: null,
      ),
    );
  }

  CFlex buildResults() {
    return const CFlex(
      direction: Axis.horizontal,
      spacing: 0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CFlexSizedBox(
          width: null,
          height: double.infinity,
          flex: 1,
          child: CFlex(
            direction: Axis.vertical,
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: double.infinity,
                child: CFlex(
                  direction: Axis.horizontal,
                  spacing: 0,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CFlexSizedBox(
                      width: null,
                      flex: 1,
                      child: Text(
                        'Results',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              CFlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: CFlex(
                  direction: Axis.horizontal,
                  spacing: 0,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CFlexSizedBox(
                      flex: 1,
                      child: Text(
                        'Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races. For more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters. Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races. For more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters.',
                        style: TextStyle(color: Color(0xff666c8e)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  CFlex buildUpper(double sHeight, double sWidth) {
    return CFlex(
      direction: Axis.vertical,
      spacing: 27,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CFlexSizedBox(
          width: double.infinity,
          height: null,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: null,
                height: null,
                child: Icon(
                  IconData(
                    59483,
                    fontFamily: 'MaterialIcons',
                    matchTextDirection: true,
                  ),
                  color: Color(0xffffffff),
                ),
              ),
              CFlexSizedBox(
                width: null,
                height: null,
                child: Icon(
                  IconData(62927, fontFamily: 'MaterialIcons'),
                  color: Color(0xffffffff),
                ),
              )
            ],
          ),
        ),
        const CFlexSizedBox(
          width: double.infinity,
          height: 24,
          child: CFlex(
            direction: Axis.vertical,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CFlexSizedBox(
                width: null,
                height: null,
                child: Icon(
                  IconData(983402, fontFamily: 'MaterialIcons'),
                  color: Color(0xffffffff),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          height: sHeight * 0.05,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CFlexSizedBox(
                width: null,
                height: sHeight * 0.05,
                child: CButton(
                  onPressed: () {},
                  color: const Color(0xff475ad7),
                  child: const Text(
                    'US Election',
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.57,
                height: null,
                child: const Text(
                  'The latest situation in the presidential election',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          flex: 1,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 50,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.17,
                height: sHeight * 0.08,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/149434617?s=400&u=540ab3d75247932b474182bb411945ee63a111ca&v=4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const CFlexSizedBox(
                flex: 1,
                child: CFlex(
                  direction: Axis.vertical,
                  spacing: 0,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CFlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'Önder Özduyucu',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CFlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'Designer',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
