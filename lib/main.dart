import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:varuna/Customer/Landing/landing_screen.dart';
import 'package:varuna/Customer/Menu/detail_product_screen.dart';
import 'package:varuna/Customer/Menu/order_product_screen.dart';
import 'package:varuna/Customer/Menu/payment_screen.dart';
import 'package:varuna/Customer/Profile/edit_profile_screen.dart';
import 'package:varuna/Seller/Profile/profile_shop_screen.dart';
import 'package:varuna/Seller/Register/form_seller_information_screen.dart';
import 'package:varuna/Seller/Register/seller_register_screen.dart';
import 'Customer/Menu/Components/dummy.dart';
import 'Customer/Menu/list_order_screen.dart';
import 'Customer/Menu/product_categories_screen.dart';
import 'Customer/Menu/screen_dumpy.dart';
import 'Customer/Password/forgot_password_scren.dart';
import 'Customer/Login/login_screen.dart';
import 'Customer/Password/Otp Password/otp_screen.dart';
import 'Customer/Password/verify_email_screen.dart';
import 'Customer/Profile/profile_screen.dart';
import 'Customer/Sign Up/create_account_screen.dart';
import 'Customer/Password/new_password_screen.dart';
import 'Customer/Menu/home_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Varuna Apps',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      initialRoute: '/',
      routes: {

        // ? Landing
        '/': (context) => const LandingScreen(),

        // ? Account
        '/Login': (context) => const LoginScreen(),
        '/CreateAccount': (context) => const CreateAccountScreen(),
        '/ForgotPassword': (context) => const ForgotPasswordScreen(),
        '/VerifyEmail':(context) => const VerifyEmailScreen(),
        '/OtpCode': (context) => OtpScreen(ModalRoute.of(context)?.settings.arguments as String, ModalRoute.of(context)?.settings.arguments as String),
        '/CreateNewPassword': (context) => const CreateNewPasswordScreen(),

        // ? MenuScreen
        '/HomeScreen':(context) => const HomeScreen(),
        '/ScreenDumpy':(context) => const ScreenDumpy(),
        '/Dummy':(context) => const DummyScreen(),
        '/ProductByCategories': (context) => ProductByCategoriesScreen(ModalRoute.of(context)?.settings.arguments as String),
        '/DetailProduct': (context) => DetailProductScreen(product: ModalRoute.of(context)?.settings.arguments as String, price: ModalRoute.of(context)?.settings.arguments as String,),
        // '/OrderProduct': (context) => OrderProductScreen(product: ModalRoute.of(context)?.settings.arguments as Product),
        '/OrderProduct': (context) => const OrderProductScreen(),
        '/Payment': (context) => const PaymentScreen(),
        '/ListOrder':(context) => const ListOrderScreen(),

        // ? Profile
        '/Profile': (context) => const ProfileScreen(),
        '/EditProfile':(context) => const EditProfileScreen(),

        // ? Seller
        '/Seller': (context) => const SellerRegisterScreen(),
        '/FormSeller':(context) => const FormSellerInformationScreen(),
        '/ProfileShop':(context) => const ProfileShopScreen(),
      },
    );
  }
}