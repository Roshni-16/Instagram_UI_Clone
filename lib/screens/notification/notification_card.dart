// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomFollowNotification extends StatefulWidget {
//   const CustomFollowNotification({super.key});

//   @override
//   State<CustomFollowNotification> createState() =>
//       _CustomFollowNotificationState();
// }

// class _CustomFollowNotificationState extends State<CustomFollowNotification> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const CircleAvatar(
//           radius: 25,
//           backgroundImage: AssetImage('images/1.png'),
//         ),
//         SizedBox(
//           width: 15,
//         ),
//         Column(
//           children: [
//             Text("Shruti Dixit",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                 )
//                 // .of(context)
//                 //     .textTheme
//                 //     .headlineMedium!
//                 //     .copyWith(color: Colors.black),

//                 ),
//             const SizedBox(
//               height: 5,
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Map<String, dynamic> notification;
  final VoidCallback onTap;

  NotificationCard({required this.notification, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: notification['isRead']
            ? Colors.grey[200]
            : Colors.white, // Grey out read notifications
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(notification['image']),
          ),
          title: Text(
            '${notification['user']} ${notification['action']}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: notification['isRead'] ? Colors.grey : Colors.black,
            ),
          ),
          subtitle: Text(
            notification['time'],
            style: TextStyle(
              color: notification['isRead'] ? Colors.grey : Colors.black54,
            ),
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: notification['isRead'] ? Colors.grey : Colors.black,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
    );
  }
}
