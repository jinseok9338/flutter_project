import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/data/api_helper.dart';
import 'package:flutter_getx_template/app/modules/widgets/custom_inkwell_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_template/app/modules/login/views/login_view.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInkwellWidget(
      onTap: () {
        Get.to(() => LoginView(
              text: post.body,
            ));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                post.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(post.body),
            ),
          ],
        ),
      ),
    );
  }
}
