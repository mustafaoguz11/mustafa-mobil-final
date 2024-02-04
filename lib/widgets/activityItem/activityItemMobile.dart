import 'package:flutter/material.dart';

class ActivityItemMobile extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String location;
  final String contact;
  final String payment;
  final String imageAsset;
  final Function()? onTap;

  const ActivityItemMobile({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.contact,
    required this.payment,
    required this.imageAsset,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            color: const Color.fromARGB(255, 15, 69, 112), 
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageAsset),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 200,
                  child: Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on),
                          const SizedBox(width: 5),
                          SizedBox(
                            width: 50,
                            child: Text(
                              location,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.phone),
                        const SizedBox(width: 5),
                        SizedBox(
                          child: Text(
                            contact,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
