import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  Widget navItem({required String nama, required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            nama,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight:
                  index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              color: const Color(0xFF1D1E3C),
            ),
          ),
          Container(
            width: 66,
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index == selectedIndex
                  ? const Color(0XFFFE998D)
                  : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              child: Column(
                // NOTE: NAVIGATION
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navItem(nama: 'Guides', index: 0),
                          const SizedBox(width: 50),
                          navItem(nama: 'Pricing', index: 1),
                          const SizedBox(width: 50),
                          navItem(nama: 'Team', index: 2),
                          const SizedBox(width: 50),
                          navItem(nama: 'Stories', index: 3),
                        ],
                      ),
                      Image.asset(
                        'assets/btn.png',
                        width: 163,
                        height: 53,
                      )
                    ],
                  ),

                  // NOTE: CONTENT
                  const SizedBox(height: 76),
                  Image.asset(
                    'assets/illustration.png',
                    height: 450,
                  ),
                  const SizedBox(
                    height: 84,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_down_solid.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: GoogleFonts.poppins(fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
