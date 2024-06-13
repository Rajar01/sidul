import 'package:flutter/material.dart';

class CarouselText extends StatefulWidget {
  final List<String> textList;
  final List<bool> selectedList;
  final Function(int) onTextTap;

  const CarouselText({
    Key? key,
    required this.textList,
    required this.selectedList,
    required this.onTextTap,
  }) : super(key: key);

  @override
  _CarouselTextState createState() => _CarouselTextState();
}

class _CarouselTextState extends State<CarouselText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.textList.length,
        itemBuilder: (context, index) {
          bool isSelected = widget.selectedList[index];
          return GestureDetector(
            onTap: () {
              widget.onTextTap(index);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.blue[50],
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Center(
                child: Text(
                  widget.textList[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.blue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
