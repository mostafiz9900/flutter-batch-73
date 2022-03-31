import 'package:flutter/material.dart';
import 'package:respecting_softkeyboard/ui/global_widget/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(), 
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(title: Text('Home Page')),
          //  resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Text('Rspecting Softkeyboard'),
                SizedBox(height: 20.0),
                CustomTextField(),
                SizedBox(height: 20.0),
                CustomTextField(),
                SizedBox(height: 20.0),
                ElevatedButton(onPressed: () {
                  CustomDrawer();
                }, child: Text('show d')),
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      backgroundColor: Colors.red,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal:18 ),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('Enter your address',
                      // style: TextStyles.textBody2
                      
                      ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'adddrss'
                    ),
                    // autofocus: true,
                    // controller: _newMediaLinkAddressController,
                  ),
                ),
    
                SizedBox(height: 10),
              ],
            ),
      ));
                    },
                    child: Text('Login'))
              ],
            )),
          )),
    );
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: Card(
          elevation: 20.0,
          child: TextField(
            decoration: InputDecoration(
                hintText: 'User Name',
                labelText: 'User Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
        ));
  }
}
