import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> _prices = ["69.99", "25.0", "12.0"];
  final List<String> _categories = ["Shoes", "Dinner", "Clothes"];
  final List<String> _dates = ["May 4, 2021", "Jun 2, 2021", "Jul 22, 2021"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            _bgHeader(context),
            _bodyTile(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black),
        backgroundColor: const Color(0xff79d2a6),
      ),
    );
  }

  Widget _bgHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Total Expenses",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "106.99",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.centerRight,
          colors: [
            Color(0xff00b2bb),
            Color(0xff79d2a6),
          ],
        ),
      ),
    );
  }

  Widget _bodyTile(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.325,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => Card(
              elevation: 3.5,
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 2.5),
                leading: Text(
                  _prices[index],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff424242),
                  ),
                ),
                title: Text(
                  _categories[index],
                  style: const TextStyle(
                    color: Color(0xff00BCD6),
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                subtitle: Text(
                  _dates[index],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            itemCount: 3,
          )),
    );
  }
}
