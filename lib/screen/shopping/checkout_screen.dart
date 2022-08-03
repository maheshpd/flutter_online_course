import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_course/constants.dart';
import 'package:flutter_online_course/data_provider/my_course_data_provider.dart';
import 'package:flutter_online_course/data_provider/shopping_cart_data_provider.dart';
import 'package:flutter_online_course/screen/shopping/payment_method.dart';
import 'package:flutter_online_course/utils/route_name.dart';
import 'package:flutter_online_course/utils/util.dart';

import '../../model/course.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen(
      {Key? key, required this.courseList, required this.totalPrice})
      : super(key: key);

  final List<Course> courseList;

  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Checkout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Billing Address",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(
                  height: 10,
                ),
                // We will be showing country, state & city in billing address
                //To show the dropdowns for that, I am using csc_picker: ^0.2.6 package
                CSCPicker(
                  layout: Layout.vertical,
                  flagState: CountryFlag.DISABLE,
                  onCountryChanged: (value) {},
                  onStateChanged: (value) {},
                  onCityChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                //Let's create widget for payment methods
                const PaymentMethods(),
                const SizedBox(
                  height: 10,
                ),
                //Now lets show course list for final order confirmation
                Text(
                  "Order",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: courseList.length,
                        itemBuilder: (context, index) {
                          Course course = courseList[index];
                          return ListTile(
                            leading: Image.asset(
                              course.thumbnailUrl,
                              width: 50,
                              height: 50,
                            ),
                            title: Text(
                              course.title,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            trailing: Text("\$${course.price}"),
                          );
                        }))
              ],
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$$totalPrice",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        MyCourseDataProvider.addAllCourse(courseList);
                        //Lets clear shopping cart
                        ShoppingCartDataProvider.clearCart();
                        //Now lets show order placed message
                        Util.showMessage(
                            context, "Your order is placed successfully");
                        //Navigate to home screen
                        Navigator.pushNamed(context, RouteNames.courseHome);
                      },
                      style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                      child: const Text(
                        "Place Order",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
