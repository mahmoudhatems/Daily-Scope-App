import 'package:daily_scope/constants.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://assets.goal.com/images/v3/blt7dc55d19dd992dd7/Percy_Tau_Al_Ahly.jpg?auto=webp&format=pjpg&width=1200&quality=60",
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              )),
          Text(
            "Al Ahly urged to get rid of Bafana Bafana vice-captain Percy Tau - He has nothing to offer the club",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color:maincolor,fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
            Text(
            "The former Club Brugge star has blown hot and cold in the 2023/24 season and the Egyptian giants have been told to release the lefty",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, color:maincolorlight,),
          ),
        ],
      ),
    );
  }
}
