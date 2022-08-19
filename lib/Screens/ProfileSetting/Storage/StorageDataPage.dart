import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class StorageDataPage extends StatefulWidget {
  StorageDataPage({Key? key}) : super(key: key);

  @override
  State<StorageDataPage> createState() => _StorageDataPageState();
}

class _StorageDataPageState extends State<StorageDataPage> {
  var mediaOptions = ["Photos", "Audio", "Videos", "Documents"];
  var photosQualityOptions = [
    "Auto(recommended)",
    "Best quality",
    "Data saver"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: true,
        title: const Text(
          "Storage and data",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: SingleChildScrollView(
            child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  "assets/folder.png",
                  height: 25,
                  width: 25,
                  color: Colors.grey,
                ),
              ),
              title: const Text(
                "Manage storage",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "757.9 MB",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  "assets/storage_graph.png",
                  height: 25,
                  width: 25,
                  color: Colors.grey,
                ),
              ),
              title: const Text(
                "Network usage",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "23.6 MB sent , 493.5 MB received",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.abc,
                color: Colors.white,
              ),
              title: const Text(
                "Use less data for calls",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Switch(
                onChanged: (v) {},
                value: false,
              ),
            ),
            const ListTile(
              title: Text(
                "Network usage",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              subtitle: Text(
                "Voice messages are always automatically downloaded",
                style: TextStyle(fontSize: 11.5),
              ),
            ),
            //When using mobile data
            ListTile(
              onTap: () {
                showChooseMediaOptions("When using mobile data");
              },
              leading: const Icon(
                Icons.abc,
                color: Colors.white,
              ),
              title: const Text(
                "When using mobile data",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "No media",
                style: TextStyle(fontSize: 13),
              ),
            ),
            //When connected on Wi-Fi
            ListTile(
              onTap: () {
                showChooseMediaOptions("When connected on Wi-Fi");
              },
              leading: const Icon(
                Icons.abc,
                color: Colors.white,
              ),
              title: const Text(
                "When connected on Wi-Fi",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "No media",
                style: TextStyle(fontSize: 13),
              ),
            ),
            //When roaming
            ListTile(
              onTap: () {
                showChooseMediaOptions("When roaming");
              },
              leading: const Icon(
                Icons.abc,
                color: Colors.white,
              ),
              title: const Text(
                "When roaming",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "No media",
                style: TextStyle(fontSize: 13),
              ),
            ),

            const ListTile(
              title: Text(
                "Media upload quality",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              subtitle: Text(
                "Choose the quality of media files to be sent",
                style: TextStyle(fontSize: 11.5),
              ),
            ),
            ListTile(
              onTap: () {
                showOptions();
              },
              leading: const Icon(
                Icons.abc,
                color: Colors.white,
              ),
              title: const Text(
                "Photo upload quality",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Auto(recommended)",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        )),
      )),
    );
  }

  //Media options selections
  showChooseMediaOptions(String title) {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customBox(height: 20),
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 10),
                        SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: mediaOptions.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Checkbox(value: false, onChanged: (v) {}),
                                  customBox(width: 10),
                                  Text(
                                    mediaOptions[index],
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "OK",
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                ))
                          ],
                        )
                      ])));
        });
  }

  //Photo upload quality
  showOptions() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customBox(height: 20),
                        const Text(
                          "Photo upload quality",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 20),
                        const Text(
                          "Best quality photos are larger and can take longer to send",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 10),
                        SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: photosQualityOptions.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: -1,
                                      onChanged: (v) {}),
                                  customBox(width: 10),
                                  Text(
                                    photosQualityOptions[index],
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "OK",
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                ))
                          ],
                        )
                      ])));
        });
  }
}
