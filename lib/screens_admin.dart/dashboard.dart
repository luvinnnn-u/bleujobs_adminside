

// // import 'package:flutter/material.dart';

// // class DashBoardPage extends StatefulWidget {
// //   const DashBoardPage({super.key});

// //   @override
// //   State<DashBoardPage> createState() => _DashBoardPageState();
// // }

// // class _DashBoardPageState extends State<DashBoardPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Dashboard'),
// //         actions: <Widget>[
// //           IconButton(
// //             icon: Icon(Icons.menu),
// //             onPressed: () {
// //               Scaffold.of(context).openDrawer(); // Opens the drawer when the menu icon is tapped
// //             },
// //           ),
// //         ],
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: <Widget>[
// //             UserAccountsDrawerHeader(
// //               accountName: Text('Admin Name'), // Replace 'Admin Name' with the actual admin name
// //               accountEmail: Text('admin@example.com'), // Replace with the admin's email
// //               currentAccountPicture: CircleAvatar(
// //                 child: Icon(Icons.person_outline),
// //               ),
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.logout),
// //               title: Text('Sign Out'),
// //               onTap: () {
// //                 Navigator.pop(context); // Closes the drawer
// //                 Navigator.pushReplacementNamed(context, '/signin'); // Navigates to the sign-in page
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: GridView.count(
// //           crossAxisCount: 2, // Number of columns
// //           children: <Widget>[
// //             Card(
// //               child: InkWell(
// //                 onTap: () {
// //                   // Add your logic here to navigate to the users page or perform an action
// //                   // Example: Navigator.pushNamed(context, '/users');
// //                 },
// //                 child: Center(
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: <Widget>[
// //                       Icon(Icons.group, size: 70, color: Colors.blue), // Icon for Users
// //                       Text('Users', style: TextStyle(fontSize: 17)),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             Card(
// //               child: InkWell(
// //                 onTap: () {
// //                   // Add your logic here to navigate to the reports page or perform an action
// //                   // Example: Navigator.pushNamed(context, '/reports');
// //                 },
// //                 child: Center(
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: <Widget>[
// //                       Icon(Icons.bar_chart, size: 70, color: Colors.red), // Icon for Reports
// //                       Text('Reports', style: TextStyle(fontSize: 17)),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             // Add more cards here for other sections
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:bluejobs_admin/screens_admin.dart/reports.dart';
// import 'package:bluejobs_admin/screens_admin.dart/userslist.dart';

// class DashBoardPage extends StatefulWidget {
//   const DashBoardPage({super.key});

//   @override
//   State<DashBoardPage> createState() => _DashBoardPageState();
// }

// class _DashBoardPageState extends State<DashBoardPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {
//               Scaffold.of(context).openDrawer(); // Opens the drawer when the menu icon is tapped
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text('Admin Name'), // Replace 'Admin Name' with the actual admin name
//               accountEmail: Text('admin@example.com'), // Replace with the admin's email
//               currentAccountPicture: CircleAvatar(
//                 child: Icon(Icons.person_outline),
//               ),
//             ListTile(
//               leading: Icon(Icons.logout),
//               title: Text('Sign Out'),
//               onTap: () {
//                 Navigator.pop(context); // Closes the drawer
//                 Navigator.pushReplacementNamed(context, '/signin'); // Navigates to the sign-in page
//               },
//             ),
//             ),
//           ],
        
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.count(
//           crossAxisCount: 2, // Number of columns
//           childAspectRatio: 1.0, // Adjust this value to change the card sizes
//           children: <Widget>[
//             Card(
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => UsersListPage(), // Navigate to UsersListPage
//                     ),
//                   );
//                 },
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Icon(Icons.group, size: 70, color: Colors.blue), // Icon for Users
//                       Text('Users', style: TextStyle(fontSize: 17)),
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => ReportsPage(), // Navigate to ReportsPage
//                     ),
//                   );
//                 },
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Icon(Icons.bar_chart, size: 70, color: Colors.red), // Icon for Reports
//                       Text('Reports', style: TextStyle(fontSize: 17)),
//                   ],
//                 ),
//               ),
//             ),
            
//             // Add more cards here for other sections
//           ],
        
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:bluejobs_admin/screens_admin.dart/reports.dart';
import 'package:bluejobs_admin/screens_admin.dart/userslist.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Admin Name'),
              accountEmail: Text('admin@example.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person_outline),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sign Out'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/signin');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UsersListPage()),
                  );
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.group, size: 70, color: Colors.blue),
                      Text('Users', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportsPage()),
                  );
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.bar_chart, size: 70, color: Colors.red),
                      Text('Reports', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}