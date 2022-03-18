import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> _symptoms = ["Insomnia", "Depression", "Baby Sleep"];
  final List<String> _title = [
    '''
Calming
Sounds
''',
    '''
Insomnia
''',
    '''
For
Children
''',
    '''
Tips for
Sleeping
'''
  ];
  final List<Color> _gradient1 = [
    const Color(0xff06B782),
    const Color(0xffFC67A7),
    const Color(0xffFFD541),
    const Color(0xff441DFC),
  ];
  final List<Color> _gradient2 = [
    const Color(0xff06B782),
    const Color(0xffF6815B),
    const Color(0xffF0B31A),
    const Color(0xff4E81EB),
  ];
  final List<String> _svgString = [
    "assets/icons/headphone.svg",
    "assets/icons/tape.svg",
    "assets/icons/headphone.svg",
    "assets/icons/tape.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: CustomScrollView(
        slivers: [
          _header(),
          _recommendation(),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(bottom: 16, left: 22),
              child: const Text(
                "Recent",
                style: TextStyle(
                  color: Color(0xff515979),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          _recentGrid(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/discover.svg",
              color: const Color(0xff4A80F0),
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/chart.svg",
            ),
            label: "Chart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/profile.svg",
            ),
            label: "Profile",
          ),
        ],
        currentIndex: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 30,
        backgroundColor: const Color(0xff1C2031),
        onTap: (index) {},
      ),
    );
  }

  Widget _recommendedCards(Color gradient1, Color gradient2) {
    return Container(
      height: 185,
      width: 339,
      margin: const EdgeInsets.only(left: 16, bottom: 25, top: 19),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(26)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            gradient1,
            gradient2,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: gradient1.withOpacity(0.3),
            blurRadius: 13,
            spreadRadius: 3,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
              child: SvgPicture.asset(
                'assets/pics/Vector.svg',
                width: 339,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
              child: SvgPicture.asset(
                'assets/pics/Vector-1.svg',
                width: 339,
              ),
            ),
          ),
          Positioned(
            top: 28,
            left: 28,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Sleep Meditation",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "7 Day Audio Series",
                  style: TextStyle(
                    color: Color(0xFFC6C3fc),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            left: 28,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/headphone.svg',
                  width: 27,
                  height: 27,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  'assets/icons/tape.svg',
                  width: 27,
                  height: 27,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Discover",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF Pro Display',
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 2.2,
                      width: 33,
                      decoration: const BoxDecoration(
                        color: Color(0xff4271d3),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/icons/search.svg",
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i < 3; i++)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 16),
                    margin: EdgeInsets.only(
                      left: i == 0 ? 22 : 0,
                      right: 16.0,
                      top: 30.0,
                      bottom: 30.0,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          color: i == 0
                              ? const Color(0xff4A80F0).withOpacity(0.3)
                              : const Color(0xff1C2031).withOpacity(0.3),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      color: i == 0
                          ? const Color(0xff4A80F0)
                          : const Color(0xff1C2031),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _symptoms[i],
                      style: const TextStyle(
                        fontSize: 17.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _recommendation() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 22, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recommended",
                  style: TextStyle(
                      color: Color(0xff515979),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Color(0xFF497EEB),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _recommendedCards(
                    const Color(0xff441DFC), const Color(0xff4E81EB)),
                _recommendedCards(
                    const Color(0xffFC67A7), const Color(0xffF6815B)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _recentGrid() {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 18,
          childAspectRatio: 155 / 113,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            margin: index % 2 == 0
                ? const EdgeInsets.only(right: 13)
                : const EdgeInsets.only(left: 13),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  _gradient1[index],
                  _gradient2[index],
                ],
              ),
              borderRadius: BorderRadius.circular(26),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(30),
                    ),
                    child: SvgPicture.asset(
                      'assets/pics/VectorSmallTop.svg',
                      width: 164,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(30),
                    ),
                    child: SvgPicture.asset(
                      'assets/pics/VectorSmallBottom.svg',
                      width: 164,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Text(
                    _title[index],
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  bottom: 20,
                  child: SvgPicture.asset(_svgString[index]),
                ),
              ],
            ),
          );
        }, childCount: 4),
      ),
    );
  }
}
