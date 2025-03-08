import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NoteHome extends StatefulWidget {
  const NoteHome({super.key});

  @override
  State<NoteHome> createState() => _NoteHomeState();
}

class _NoteHomeState extends State<NoteHome> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 73, 122, 246),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hello \nMy Notes",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 44,
                    ))
              ],
            ),
            const Gap(16),
            Container(
              padding: const EdgeInsets.only(top: 6, right: 16, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 41, 41, 41),
              ),
              child: const TextField(
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 160, 160), fontSize: 18),
                decoration: InputDecoration(
                    prefixIconColor: Color.fromARGB(255, 160, 160, 160),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 160, 160, 160),
                        fontSize: 18),
                    hintText: "Search Here",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            const Gap(16),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 41, 41),
                  borderRadius: BorderRadius.circular(9)),
              padding: const EdgeInsets.only(
                  right: 14, left: 14, bottom: 16, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "28 May",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 160, 160, 160),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.file_upload,
                            color: Color.fromARGB(255, 160, 160, 160),
                          ))
                    ],
                  ),
                  const Text(
                    "Task Managament App Ui Design",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Gap(4),
                  const Text(
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 160, 160, 160),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        height: 10,
                        width: 10,
                      ),
                      const Gap(4),
                      const Text(
                        "Just Now",
                        style: TextStyle(
                          color: Color.fromARGB(255, 160, 160, 160),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(12),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 41, 41),
                  borderRadius: BorderRadius.circular(9)),
              padding: const EdgeInsets.only(
                  right: 14, left: 14, bottom: 16, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "12 May",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 160, 160, 160),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.file_upload,
                            color: Color.fromARGB(255, 160, 160, 160),
                          ))
                    ],
                  ),
                  const Text(
                    "Shopping List",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Gap(4),
                  const CheckedItem(
                    item: 'Apple',
                  ),
                  const CheckedItem(
                    item: 'Mango Juice',
                  ),
                  const CheckedItem(
                    item: 'Banana 5 pcs with',
                  ),
                  const CheckedItem(
                    item: 'ButterMilk',
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class CheckedItem extends StatefulWidget {
  final String item;
  const CheckedItem({super.key, required this.item});

  @override
  State<CheckedItem> createState() => _CheckedItemState();
}

class _CheckedItemState extends State<CheckedItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: Colors.green,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            }),
        Text(
          widget.item,
          style: isChecked
              ? const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color.fromARGB(255, 160, 160, 160),
                  fontSize: 16,
                  color: Color.fromARGB(255, 160, 160, 160),
                )
              : const TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}
