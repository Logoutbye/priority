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
              Image.asset(
                AppAssest.diagram,
                color: Colors.black,
              ),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Row(
                          children: [
                            actionButton(AppAssest.plant, context,
                                "Invest in a Business", Colors.teal[100]!),
                            actionButton(AppAssest.curve, context,
                                "Invest in a Property", Colors.blue[100]!),
                            actionButton(AppAssest.blueprint, context,
                                "Venture in a Project", Colors.pink[100]!),
                            actionButton(AppAssest.bill, context, "Get a Loan",
                                Colors.orange[100]!),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: [
                            actionButton(AppAssest.bench, context,
                                "Buy a Property", Colors.green[100]!),
                            actionButton(AppAssest.budget, context,
                                "Acquire a Business", Colors.yellow[100]!),
                            actionButton(AppAssest.chart, context,
                                "Buy Business Shares", Colors.red[100]!),
                            actionButton(AppAssest.rent, context,
                                "Lease a Business", Colors.purple[100]!),
                          ],
                        ),
                      )
                    ],
                  )),

              // Featured Partnership Openings Section
              sectionHeader("Featured Partnership Openings"),
              featuredPartnershipCard(context),

              // Trending Projects
              sectionHeader("Trending Projects"),
              trendingProjectsRow(context),

              // Properties for Sale
              sectionHeader("Properties for Sale"),
              propertiesForSaleRow(context),

              // Properties Investment Opportunities
              sectionHeader("Properties Investment Opportunities"),
              propertiesInvestmentOpportunitiesRow(context),

              // Business Shares Listings
              sectionHeader("Business Shares Listings"),
              businessSharesListingsRow(context),

              // Business on Lease
              sectionHeader("Business on Lease"),
              businessOnLeaseCarousel(context),

              // Business for Sale
              sectionHeader("Business for Sale"),
              businessForSaleCarousel(context),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sliderItem() {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssest.slider,
            ),
            fit: BoxFit.fill),
        color: Colors.grey[300], // Placeholder for slider image
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Click to Complete profile setup!",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            "Complete profile",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            "Submit Proof of Adress",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            "Submit valid ID",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "...See All",
                style: TextStyle(color: Colors.blue),
              )),
        ],
      ),
    );
  }

  Widget actionButton(
      String assetPath, BuildContext context, String label, Color color) {
    return Column(
      children: [
        Container(
          height: context.height / 12,
          width: context.width / 4,
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.teal[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                assetPath,
                height: context.height / 40,
              ),
              SizedBox(height: context.height / 90),
              Text(
                label,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ), // Placeholder for icon
        ),
      ],
    );
  }

  Widget featuredPartnershipCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      height: context.height / 2.5,
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
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: context.height / 8.0,
                child: SizedBox(
                  width: double.infinity,
                  height: context.height / 8.6,
                  // color: Colors.grey[300], // Placeholder for image
                  child: Image.asset(AppAssest.rectangle3),
                ),
              ),
              Positioned(
                  bottom: 0.0,
                  right: 10.0,
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFFB6EBE4),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            "Asking For N120M",
                            style: TextStyle(color: Color(0xFF076B5E)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFFB6EBE4),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            "60.005 - 5 months",
                            style: TextStyle(color: Color(0xFF076B5E)),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Emeral LLC",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("Printing & Publishing",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    )),
                Text(
                    "Lorem ip dolor sit amet, consectetur adipscingelit, sed do enusmod tempor incididunt ut laboreet dolore magna aliqua, massa enim nec",
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Asking for N120M"),
                        SizedBox(height: 12),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: ImageStackWidget(),
                        ),
                        SizedBox(),
                      ],
                    ),
                    CircularProgressBar()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget trendingProjectsRow(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            trendingProjectCard(context, "assets/trending2.png"),
            const SizedBox(
              width: 5.0,
            ),
            trendingProjectCard(context, "assets/trending1.png"),
            const SizedBox(
              width: 5.0,
            ),
            trendingProjectCard(context, "assets/trending2.png"),
            const SizedBox(
              width: 5.0,
            ),
            trendingProjectCard(context, "assets/trending1.png"),
          ],
        ),
      ),
    );
  }

  Widget trendingProjectCard(context, String image) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
    );
  }

  Widget propertiesForSaleRow(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            propertyForSaleCard(context),
            propertyForSaleCard(context),
          ],
        ),
      ),
    );
  }

  Widget propertyForSaleCard(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 120,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 115,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/building.png",
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 Plot With Duplex",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Text(
                      "Lekki Phase II, Lagos State",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From N55m",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(255, 87, 190, 125)),
                    ),
                    Text(
                      "Payment plans available",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget propertiesInvestmentOpportunitiesRow(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            propertiesInvestmentCard(context),
            const SizedBox(
              width: 10.0,
            ),
            propertiesInvestmentCard(context),
          ],
        ),
      ),
    );
  }

  Widget propertiesInvestmentCard(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 120,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2 Plots 200 by 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      Text(
                        "Empty land",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "30% Interest",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF099684)),
                      ),
                      Text(
                        "May 2025 (13 Months)",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF099684).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: Text("N1.5m+ for 1%",
                            style: TextStyle(color: Color(0xFF076B5E)))),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "25.75k",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Investors",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
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

  Widget businessSharesListingsRow(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            businessSharesCard(
                context, "Malted Inc", "Up to 30% shares", Colors.blue[100]!),
            const SizedBox(
              width: 10.0,
            ),
            businessSharesCard(
                context, "Nazlet", "Up to 12% shares", Colors.red[100]!),
            const SizedBox(
              width: 10.0,
            ),
            businessSharesCard(
                context, "Nixon And", "Up to 30% shares", Colors.green[100]!),
          ],
        ),
      ),
    );
  }

  Widget businessSharesCard(
      context, String businessName, String sharesInfo, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.33,
      decoration: BoxDecoration(
        color: color.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text("more current rates",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/rectangleImage.png"),
              ),
            ),
            Text(businessName,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Container(
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: const Center(
                      child: Text(
                        "10 Sellers",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(sharesInfo, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget businessOnLeaseCarousel(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: PageView(
        children: [
          businessLeaseCard(
              context, "Business One", "On Lease", "Tag1", Colors.green),
          businessLeaseCard(
              context, "Business Two", "On Lease", "Tag2", Colors.orange),
        ],
      ),
    );
  }

  Widget businessForSaleCarousel(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: PageView(
        children: [
          businessForSaleCard(
              context, "Malted Inc", "Web Design Service", "Tag3", Colors.blue),
          businessForSaleCard(
              context, "Malted Inc", "For Sale", "Tag4", Colors.red),
        ],
      ),
    );
  }

  Widget businessLeaseCard(BuildContext context, String title, String subtitle,
      String tag, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: const DecorationImage(
                                image: AssetImage("assets/rectangleImage.png")),
                            borderRadius: BorderRadius.circular(
                                10.0)), // Placeholder for image
                      ),
                      const SizedBox(width: 36),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800)),
                          Text(
                            subtitle,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: const Color(0xFF099684).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                          child: Text(
                        "N500k per Month",
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: 130,
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF103F5E).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                    child: Text("N500k+ Monthly Net",
                        style: TextStyle(color: Colors.black))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget businessForSaleCard(BuildContext context, String title,
      String subtitle, String tag, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        // width: MediaQuery.of(context).size.width * 0.7,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.grey[400],
                    backgroundImage: const AssetImage(
                        "assets/circularImage.png"), // Placeholder for image
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800)),
                      Text(
                        subtitle,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "N120m",
                    style: TextStyle(fontSize: 16, color: Color(0xFF099684)),
                  )
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: 130,
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF511911).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                    child: Text("N500k+ Monthly Net",
                        style: TextStyle(color: Colors.black))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension MediaQueryExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;
}

class ImageStackWidget extends StatelessWidget {
  const ImageStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    ];
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i <= images.length; i++)
            Align(
              widthFactor: .3,
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)),
                margin: EdgeInsets.only(left: i.toDouble() * 10),
                child: i < images.length
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(images[i]),
                      )
                    : CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: const Row(
                          children: [
                            Icon(
                              Icons.add,
                            ),
                            Text('3')
                          ],
                        ),
                      ),
              ),
            ),
        ],
      ),
    );
  }
}

class CircularProgressBar extends StatefulWidget {
  const CircularProgressBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CircularProgressBarState createState() => _CircularProgressBarState();
}

class _CircularProgressBarState extends State<CircularProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Duration of the animation
      vsync: this,
    );

    // Start the animation to 57.75%
    _animation = Tween<double>(begin: 0, end: 0.5775).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: context.width / 6,
                  height: context.height / 14,
                  child: CircularProgressIndicator(
                    value: _animation.value,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.green),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                Text(
                  "${(_animation.value * 100).toStringAsFixed(2)}%", // Display the percentage
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Text("Remaining", style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
