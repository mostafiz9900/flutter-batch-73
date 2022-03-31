import 'package:flutter/material.dart';
import 'package:respecting_softkeyboard/models/photo.dart';
import 'package:respecting_softkeyboard/ui/global_widget/my_app_drawer.dart';

class MyHomeView extends StatelessWidget {
  const MyHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PhotoModel> photoObj=[
      PhotoModel(
        id:1,
        name:'',
        imgPath: 'https://picsum.photos/250?image=2'
      ),
      PhotoModel(
        id:2,
        name:'',
        imgPath: 'https://picsum.photos/250?image=3'
      ),
      PhotoModel(
        id:3,
        name:'',
        imgPath: 'https://picsum.photos/250?image=4'
      ),
    ];
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text('GradView'),
      ),
      body:GridView.builder(
  itemCount: photoObj.length,
  itemBuilder: (context, index) => Image.network(photoObj.elementAt(index).imgPath!),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 12.0
  ),
)

     
    );
  }
}
































  void getBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.amber,
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Enter your address',
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
                      decoration: InputDecoration(hintText: 'adddrss'),
                      // autofocus: true,
                      // controller: _newMediaLinkAddressController,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ));
  }


class CoustomTextField extends StatefulWidget {
  const CoustomTextField({Key? key}) : super(key: key);

  @override
  _CoustomTextFieldState createState() => _CoustomTextFieldState();
}

class _CoustomTextFieldState extends State<CoustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'User Name',
            labelText: 'user name',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }
}
