import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  static const pageId = "success_page";
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: [
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: Icon(Icons.check, size: 50, color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text("Success", style: TextStyle(fontSize: 20, color: Colors.green),),
            SizedBox(height: 5,),
            Text("Your transaction was completed", style: TextStyle(fontSize: 15, color: Colors.green)),
            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(child: Text("Done")),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}