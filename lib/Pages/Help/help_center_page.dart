import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import '../Profile/profile_page.dart';
import 'HelpWidgets/contact_us_widget.dart';
import 'HelpWidgets/faq_widget.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ))
              ],
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: txtColor,
                      size: 22, // Changing Drawer Icon Size
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ));
                    },
                  );
                },
              ),
              bottom: TabBar(
                unselectedLabelColor: fieldTxtColor,
                labelColor: secondaryColor,
                indicatorColor: secondaryColor,
                indicatorWeight: 3.0,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                tabs: const [
                  Tab(
                      child: Text(
                    'FAQ',
                    style: TextStyle(fontSize: 20),
                  )),
                  Tab(
                      child: Text(
                    'Contact us',
                    style: TextStyle(fontSize: 20),
                  )),
                ],
              ),
              backgroundColor: primaryColor,
              title: const Text(
                "Help Center",
                style:
                    TextStyle(color: txtColor, fontWeight: FontWeight.normal),
              ),
            ),
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FAQ(),
                  ContactUs(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
