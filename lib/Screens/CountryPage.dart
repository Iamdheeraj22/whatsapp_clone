import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/CountryModel.dart';

class CountryPage extends StatefulWidget {
  CountryPage({Key? key, this.countryData}) : super(key: key);

  final Function? countryData;

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List<CountryModel> _country = [
    CountryModel(name: "Canada", flag: "🇨🇦", code: "+1"),
    CountryModel(name: "United States", flag: "🇺🇸", code: "+1"),
    CountryModel(name: "Zimbabwe", flag: "🇿🇼", code: "+263"),
    CountryModel(name: "India", flag: "🇮🇳", code: "+91"),
    CountryModel(name: "Australia", flag: "🇦🇺", code: "+61"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0.0,
          leading: BackButton(
            color: Colors.teal,
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Enter your phone number",
            style: TextStyle(color: Colors.teal),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.teal,
                ))
          ],
        ),
        body: ListView.builder(
          itemCount: _country.length,
          itemBuilder: ((context, index) {
            return CountryCard(_country[index]);
          }),
        ));
  }

  Widget CountryCard(CountryModel countryModel) {
    return InkWell(
      onTap: () {
        widget.countryData!(countryModel);
      },
      child: Card(
        margin: EdgeInsets.all(0.15),
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            children: [
              Text(countryModel.flag),
              customBox(width: 15),
              Text(countryModel.name),
              Spacer(),
              Text(countryModel.code),
              customBox(width: 15)
            ],
          ),
        ),
      ),
    );
  }
}
