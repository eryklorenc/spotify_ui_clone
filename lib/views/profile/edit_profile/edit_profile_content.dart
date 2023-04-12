import 'package:flutter/material.dart';

class EditProfileContent extends StatelessWidget {
  const EditProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 25,
          right: 16,
        ),
        child: ListView(
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Social',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Content settings',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'blablalblblaalal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
