import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'galleryPage.dart';

class Interface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                'Welcome this Galery ',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              Image.asset(
                'IM1.jpg',
              ),
              const Padding(padding: EdgeInsets.only(top: 200)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  child: Text('Découvrer ',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
