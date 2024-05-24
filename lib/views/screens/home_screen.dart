import 'package:flutter/material.dart';
import 'package:leeson__43/utils/app_constants.dart';
import 'package:leeson__43/views/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  final ValueChanged<bool> onThemeChanged;
  final ValueChanged<String> onImageChanged;
  final ValueChanged<List> changePassword;

  const HomeScreen(
      {super.key,
      required this.onThemeChanged,
      required this.onImageChanged,
      required this.changePassword});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bosh Sahifa"),
      ),
      drawer: CustomDrawer(
          onThemeChanged: widget.onThemeChanged,
          onImageChanged: widget.onImageChanged,
          changePassword: widget.changePassword),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.network(
              AppConstants.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text(' '));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Text(
                "Deserunt nulla officia mollit sint aliqua consequat elit pariatur cupidatat officia. Ipsum Lorem aliquip do reprehenderit. Commodo cillum voluptate ipsum consectetur consectetur quis minim velit esse ut aliqua ea nisi. Tempor consectetur ex occaecat quis consectetur ipsum amet. Aute ut est deserunt dolore aliqua enim incididunt voluptate consectetur aute reprehenderit commodo in reprehenderit. Mollit laboris qui labore minim. Deserunt proident esse nisi nisi mollit eiusmod reprehenderit Lorem ullamco reprehenderit commodo elit laborum sint.",
                style: TextStyle(
                  fontSize: TextSize.size,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
