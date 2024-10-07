import 'package:flutter/material.dart';
import 'package:priority/app_assets.dart';

void main() {
  runApp(MaterialApp(
    home: BusinessScreen(),
  ));
}

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            // Text(
            //   'ANIPARTNA',
            //   style: TextStyle(
            //       color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            Image.asset(AppAssest.appName),
            Spacer(),
            Image.asset(AppAssest.search),
            SizedBox(width: 16),
            Image.asset(AppAssest.comment),
            SizedBox(width: 16),
            Image.asset(AppAssest.bell),
            SizedBox(width: 16),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey, // Placeholder for profile image
              backgroundImage: AssetImage(AppAssest.ellipse),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tab Bar
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(AppAssest.house),
                  Image.asset(AppAssest.bus),
                  Image.asset(
                    AppAssest.diagram,
                    color: Colors.black,
                  ),
                  Image.asset(AppAssest.apartment),
                  Image.asset(AppAssest.world),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
              child: Text(
                'Businesses',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            // Browse and partnership options
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color:Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    // Container for "Browse Businesses"
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Browse Businesses",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Browse Businesses",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),

                    // CircleAvatar with three dots in the center
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20, // Adjust radius for CircleAvatar
                          child: Icon(Icons.abc_outlined)),
                    ),
                  ],
                )),

            // Hero Banner
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.grey[300], // Placeholder for image
                child:
                    Center(child: Text("Explore Partnerships on Businesses")),
              ),
            ),

            // Action buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    businessActionButton(Icons.abc, "Invest in a Business"),
                    businessActionButton(Icons.abc, "Acquire a Business"),
                    businessActionButton(Icons.abc, "Buy Business Shares"),
                    businessActionButton(Icons.abc, "Lease a Business"),
                  ],
                ),
              ),
            ),

            // Featured Partnership Openings
            sectionHeader("Featured Partnership Openings"),
            featuredPartnershipCard(),
            SizedBox(height: 16),

            // Business Shares Sales
            sectionHeader("Business Shares Sales"),
            businessSharesRow(),

            // Business on Lease
            sectionHeader("Business on Lease"),
            businessOnLeaseRow(),

            // Business for Sale
            sectionHeader("Business for Sale"),
            businessForSaleRow(),
          ],
        ),
      ),
    );
  }

  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: () {}, child: Text("...See All")),
        ],
      ),
    );
  }

  Widget businessActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.teal),
        SizedBox(height: 8),
        Text(label,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget featuredPartnershipCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              color: Colors.grey[300], // Placeholder for image
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Emeral LLC",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Printing & Publishing",
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Asking for N120M"),
                      Text("57.75% Remaining",
                          style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget businessSharesRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          businessShareCard(
              "Malted Inc", "Up to 30% shares", Colors.blue[100]!),
          businessShareCard("Nazlet", "Up to 12% shares", Colors.red[100]!),
          businessShareCard(
              "Nixon And", "Up to 30% shares", Colors.green[100]!),
        ],
      ),
    );
  }

  Widget businessShareCard(
      String businessName, String sharesInfo, Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(businessName, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(sharesInfo, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget businessOnLeaseRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          businessLeaseCard("Malted Inc", "N500k per Month", Colors.teal[100]!),
          businessLeaseCard("Malted Inc", "N12M per Year", Colors.orange[100]!),
        ],
      ),
    );
  }

  Widget businessLeaseCard(String businessName, String price, Color color) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(businessName, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(price),
          ],
        ),
      ),
    );
  }

  Widget businessForSaleRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          businessForSaleCard("Malted Inc", "N120M"),
          businessForSaleCard("Malted Inc", "N120M"),
        ],
      ),
    );
  }

  Widget businessForSaleCard(String businessName, String price) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(businessName, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(price),
          ],
        ),
      ),
    );
  }
}
