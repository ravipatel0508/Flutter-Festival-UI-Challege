import 'package:challenge1/app_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            _header(),
            const AppTextField(
              hintText: "Email",
            ),
            const AppTextField(
              hintText: "Password",
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  height: 18,
                  width: 18,
                  child: Checkbox(
                    shape: const CircleBorder(),
                    value: isSelect,
                    onChanged: (value) {
                      setState(() {
                        isSelect = value;
                      });
                    },
                    activeColor: Colors.black,
                  ),
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC01C1C),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            _footer(),
            const Spacer()
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return const Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Welcome back",
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _footer() {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            child: const CircleAvatar(
              minRadius: 24.0,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.arrow_forward_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
