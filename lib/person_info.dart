import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  final String name;
  final String status;
  final String species;
  final String gender;
  final String origin;
  final String location;
  final String image;
  const PersonInfo({
    Key? key,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
              size: 28,
            ),
          ),
          backgroundColor: Colors.grey.shade400,
          title: const Text(
            'The Rick and Morty API',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          )),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: Center(
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 30,
                      width: status == 'Unknown' ? 220 : 170,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: status == 'Dead'
                                    ? Colors.redAccent
                                    : status == 'Unknown'
                                        ? Colors.grey
                                        : const Color.fromARGB(
                                            255, 136, 255, 0),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(width: 5),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: status,
                                //  person.status,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const TextSpan(
                                text: ' - ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: species,
                                //  person.species,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ]),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Gender: ',
                        //  person.status,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: gender,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ])),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Origin: ',
                        //  person.status,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: origin,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ])),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          location,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.network(
                      image,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
