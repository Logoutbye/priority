import 'package:flutter/material.dart';
import 'package:priority/app_assets.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Image.asset(AppAssest.appName),
              const Spacer(),
              Image.asset(AppAssest.search),
              const SizedBox(width: 16),
              Image.asset(AppAssest.comment),
              const SizedBox(width: 16),
              Image.asset(AppAssest.bell),
              const SizedBox(width: 16),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(AppAssest.ellipse),
              ),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.teal,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.teal,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 12),
                child: Image.asset(AppAssest.house),
              ),
              Image.asset(AppAssest.bus),
              Image.asset(AppAssest.diagram),
              Image.asset(AppAssest.apartment),
              Image.asset(AppAssest.world),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Good Morining',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Matthew Metong',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Carousel Slider
              SizedBox(
                height: 150,
                child: PageView(
                  children: [
                    sliderItem(),
                    sliderItem(),
                    sliderItem(),
                  ],
                ),
              ),

              // Action Buttons Grid
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.8,
                  children: [
                    actionButton("Invest in a Business", Colors.teal[100]!),
                    actionButton("Invest in a Property", Colors.blue[100]!),
                    actionButton("Venture in a Project", Colors.pink[100]!),
                    actionButton("Get a Loan", Colors.orange[100]!),
                    actionButton("Buy a Property", Colors.green[100]!),
                    actionButton("Acquire a Business", Colors.yellow[100]!),
                    actionButton("Buy Business Shares", Colors.red[100]!),
                    actionButton("Lease a Business", Colors.purple[100]!),
                  ],
                ),
              ),

              // Featured Partnership Openings Section
              sectionHeader("Featured Partnership Openings"),
              featuredPartnershipCard(),

              // Trending Projects
              sectionHeader("Trending Projects"),
              trendingProjectsRow(),

              // Properties for Sale
              sectionHeader("Properties for Sale"),
              propertiesForSaleRow(),

              // Properties Investment Opportunities
              sectionHeader("Properties Investment Opportunities"),
              propertiesInvestmentOpportunitiesRow(),

              // Business Shares Listings
              sectionHeader("Business Shares Listings"),
              businessSharesListingsRow(),

              // Business on Lease
              sectionHeader("Business on Lease"),
              businessOnLeaseRow(),

              // Business for Sale
              sectionHeader("Business for Sale"),
              businessForSaleRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget sliderItem() {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[300], // Placeholder for slider image
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Slider Item")),
    );
  }

  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: FittedBox(
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
      ),
    );
  }

  Widget actionButton(String label, Color color) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.abc), // Placeholder for icon
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget featuredPartnershipCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 100,
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

  Widget trendingProjectsRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          trendingProjectCard(),
          trendingProjectCard(),
        ],
      ),
    );
  }

  Widget trendingProjectCard() {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Trending Project")),
    );
  }

  Widget propertiesForSaleRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          propertyForSaleCard(),
          propertyForSaleCard(),
        ],
      ),
    );
  }

  Widget propertyForSaleCard() {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Property for Sale")),
    );
  }

  Widget propertiesInvestmentOpportunitiesRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          propertiesInvestmentCard(),
          propertiesInvestmentCard(),
        ],
      ),
    );
  }

  Widget propertiesInvestmentCard() {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Investment Opportunity")),
    );
  }

  Widget businessSharesListingsRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          businessSharesCard(
              "Malted Inc", "Up to 30% shares", Colors.blue[100]!),
          businessSharesCard("Nazlet", "Up to 12% shares", Colors.red[100]!),
          businessSharesCard(
              "Nixon And", "Up to 30% shares", Colors.green[100]!),
        ],
      ),
    );
  }

  Widget businessSharesCard(
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
          businessLeaseCard(),
          businessLeaseCard(),
        ],
      ),
    );
  }

  Widget businessLeaseCard() {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Business on Lease")),
    );
  }

  Widget businessForSaleRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          businessForSaleCard(),
          businessForSaleCard(),
        ],
      ),
    );
  }

  Widget businessForSaleCard() {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Business for Sale")),
    );
  }
}
