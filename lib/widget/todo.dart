import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      elevation: 13,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: (){},
        child: SizedBox(
          width: double.infinity,
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height: 25,
                width: 85,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text("To do research", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Icon(Icons.watch_later_outlined),
                    Gap(20),
                    Text("16 dec."),
                    Gap(20),
                    Icon(Icons.format_list_numbered_rtl_sharp),
                    Gap(140),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                          "https://media-exp1.licdn.com/dms/image/C4E03AQEn_e5V0y1F0A/profile-displayphoto-shrink_200_200/0/1646535504263?e=1671062400&v=beta&t=_1aTkuj4QzSO_wKRhdIo5RbnUNIXrazt0n_EvTi-qmU",
                      ),
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
