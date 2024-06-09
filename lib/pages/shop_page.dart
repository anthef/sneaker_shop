import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal:25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8)
            ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style:TextStyle(color:Colors.grey)
                ),
              Icon(Icons.search)
            ],
          ),
        ),


      Padding(
        padding: const EdgeInsets.symmetric(vertical:25.0),
        child: Text(
          'everyone flies.. some fly longer than others',
          style: TextStyle(color:Colors.grey[600]),
          ),
      ),

      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hot Picks 🔥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )
              ),
            
            Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue
              )
              ),
          ],
        ),
      ),


      const SizedBox(height:10),

      Expanded(
        child: ListView.builder(itemBuilder: (context, index) => ShoeTile(),
        ),
      )


      ],

    );
  }
}
