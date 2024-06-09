import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.only(left:25),
      width : 280,
      decoration: BoxDecoration(
        color : Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
          ),

          Text(
            shoe.description,
            style: TextStyle(color:Colors.grey[600]),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  shoe.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),
            
                const SizedBox(height: 5,),
            
                Text(
                  '\$'+shoe.price,
                  style: const TextStyle(
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              )
            ),
            child: Icon(Icons.add)
            ),


        ],
      ),
    );
  }
}
