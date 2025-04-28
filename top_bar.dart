import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  const TopBarWidget({super.key, this.backgroundColor});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.backgroundColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'images/logo.png',
              height: 55,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: const Text(
                  "LOGIN / JOIN",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              IconButton(
                icon: Image.asset(
                  'images/menu.png',
                  height: 25,
                  fit: BoxFit.contain,
                ),
                onPressed: () {
                  // Handle menu image tap
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
