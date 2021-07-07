# group_circle_avatar

group_circle_avatar

# Usage:
`
  List<String> images = [
    'assets/midu.jpg',
    'assets/midu.jpg',
    'assets/midu.jpg',
    'assets/midu.jpg',
  ];

Padding(
              padding: const EdgeInsets.all(8.0),
              child: GroupCircleAvatar(
                radius: 40,
                images: images,
                // borderColor: Colors.purple,
                // textBackgroundColor: Colors.red,
                textItem: Text(
                  '+5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                imageBuilder: (path) => AssetImage(path),
              ),
            ),
`
