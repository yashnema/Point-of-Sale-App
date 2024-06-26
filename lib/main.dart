import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:xiomi_ode_to_code/provider/auth.dart';
import 'package:xiomi_ode_to_code/provider/bill_provider.dart';
import 'package:xiomi_ode_to_code/provider/cart_provider.dart';
import 'package:xiomi_ode_to_code/provider/item_provider.dart';
import 'package:xiomi_ode_to_code/provider/navigator.dart';
import 'package:xiomi_ode_to_code/screens/splash/splash.dart';
import 'package:xiomi_ode_to_code/utils/locator.dart';
import 'package:xiomi_ode_to_code/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
  setUpSingleton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => NavigationModel()),
        ChangeNotifierProvider(create: (context) => ItemsProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => BillProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xiaomi OdeToCode',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: Colors.transparent),
          textTheme: TextTheme(
            displayLarge: GoogleFonts.poppins(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
            displayMedium: GoogleFonts.montserrat(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
            bodyMedium: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w400),
            bodyLarge: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w400),
          ),
        ),
        initialRoute: SplashScreen.routeName,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
