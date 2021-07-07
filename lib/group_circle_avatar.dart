library group_circle_avatar;

import 'package:flutter/material.dart';
/// Usage:
/// Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GroupCircleAvatar(
//                 radius: 40,
//                 images: images,
//                 // borderColor: Colors.purple,
//                 // textBackgroundColor: Colors.red,
//                 textItem: Text(
//                   '+5',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 imageBuilder: (path) => AssetImage(path),
//               ),
//             ),
class GroupCircleAvatar extends StatefulWidget {
  GroupCircleAvatar({
    Key key,
    @required this.images,
    @required this.textItem,
    @required this.imageBuilder,
    this.radius = 32.0,
    this.borderColor = Colors.white,
    this.borderWidth = 4.0,
    this.gapRatio = 0.66, // 2/3
    this.textBackgroundColor = Colors.orange,
  }) : super(key: key);

  // danh sách đường dẫn ảnh
  List<String> images;

  // bán kính của ảnh bên trong
  double radius;

  // màu của đường viền
  Color borderColor;

  // độ rộng của đường viền
  double borderWidth;

  // tỉ lệ giãn cách giữa 2 ảnh
  double gapRatio;

  // text item
  Text textItem;

  // màu nền của textItem
  Color textBackgroundColor;

  // hàm builder avatar
  ImageProvider Function(String path) imageBuilder;

  @override
  _GroupCircleAvatarState createState() => _GroupCircleAvatarState();
}

class _GroupCircleAvatarState extends State<GroupCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _buildList(),
    );
  }

  _buildList() {
    double calcPadding =
        (widget.radius + widget.borderWidth) * 2.0 * widget.gapRatio;

    List<Widget> widgets = [];

    for (int i = 0; i < widget.images.length; i++) {
      widgets.add(Row(
        children: [
          Padding(padding: EdgeInsets.only(left: i * calcPadding)),
          _buildImageItem(widget.images[i]),
        ],
      ));
    }

    widgets.add(Row(
      children: [
        Padding(
            padding: EdgeInsets.only(left: widget.images.length * calcPadding)),
        _buildTextItem(),
      ],
    ));

    return widgets;
  }

  _buildImageItem(String path) {
    return CircleAvatar(
      radius: widget.radius + widget.borderWidth,
      backgroundColor: widget.borderColor,
      child: CircleAvatar(
        radius: widget.radius,
        backgroundImage: widget.imageBuilder(path),
      ),
    );
  }

  _buildTextItem() {
    return CircleAvatar(
      radius: widget.radius + widget.borderWidth,
      backgroundColor: widget.borderColor,
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: widget.textBackgroundColor,
        child: widget.textItem,
      ),
    );
  }
}
