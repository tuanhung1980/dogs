import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            _buildToggleBar(),
            SizedBox(height: 260, child: Image.asset('assets/woman_shopping.jpg')),
            DealButtons(),
            _buildProductTile(context),
          ],
        ),
      ),
    );
  }

  Container _buildProductTile(BuildContext context) {
    return Container(
            height: 200,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/textiles.jpg',
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                            'Dolor sit amet, consectetur adipiscing elit. Quisque faucibus.')
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Row _buildToggleBar() {
    return Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Formal Wear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Casual Wear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }

  AppBar _buildAppBar() {
    return AppBar(
      //backgroundColor: Colors.purpleAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      leading: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Icon(Icons.home),
      ),
      title: Text('Let\'s go shopping!'),
      //elevation: 0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}

class DealButtons extends StatelessWidget {
  const DealButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Row(
          children: const [
            DealButton(text: 'Best Sellers', color: Colors.orangeAccent),
            SizedBox(width: 10),
            DealButton(text: 'Daily Deals', color: Colors.blue),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: <Widget>[
            DealButton(text: 'Must buy in Summer', color: Colors.lightGreen),
            SizedBox(width: 10),
            DealButton(text: 'Last Chance', color: Colors.redAccent)
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class DealButton extends StatelessWidget {
  final String text;
  final Color color;

  const DealButton({
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
