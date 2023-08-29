import 'package:flutter/material.dart';

class WorksContent extends StatefulWidget {
  const WorksContent({super.key});

  @override
  State<WorksContent> createState() => _WorksContentState();
}

class _WorksContentState extends State<WorksContent> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> imageAssetPaths = [
    'photos/students/one.jpeg',
    'photos/students/withgirls.jpeg',
    'photos/students/graduates.jpeg',
    'photos/students/brothersattheevent.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 80),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % imageAssetPaths.length;
                });
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Image.asset(
                    imageAssetPaths[index % imageAssetPaths.length],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < imageAssetPaths.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    controller.jumpToPage(currentIndex - 1);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.jumpToPage(currentIndex + 1);
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        height: isSelected ? 12 : 8,
        width: isSelected ? 12 : 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
