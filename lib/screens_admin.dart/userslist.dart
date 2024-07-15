import 'package:flutter/material.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('userslist'),),
    );
  }
}

// import 'package:flutter/material.dart';

// // Define a simple user model
// class User {
//   final String id;
//   final String name;
//   final String category;

//   User(this.id, this.name, this.category);
// }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: UsersListPage(),
//     );
//   }
// }

// class UsersListPage extends StatefulWidget {
//   @override
//   _UsersListPageState createState() => _UsersListPageState();
// }

// class _UsersListPageState extends State<UsersListPage> {
//   List<User> users = [
//     User('1', 'John Doe', 'Employer'),
//     User('2', 'Jane Smith', 'Employee'),
//     // Add more users here
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Users List'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () async {
//               final results = await showSearch<User>(
//                 context: context,
//                 delegate: UserSearch(users),
//               );
//               if (results != null) {
//                 print(results.name);
//               }
//             },
//           ),
//         ],
//       ),
//       body: TabBarView(
//         children: [
//         //  EmployerList(users.where((user) => user.category == 'Employer')),
//         EmployeeList(users.where((user) => user.category == 'Employee').toList()),
//          // EmployeeList(users.where((user) => user.category == 'Employee')),
//         ],
//       ),
//       bottomNavigationBar: TabBar(
//         tabs: [
//           Tab(text: 'Employer'),
//           Tab(text: 'Employee'),
//         ],
//       ),
//     );
//   }
// }

// class UserSearch extends SearchDelegate<User> {
//   final List<User> allUsers;

//   UserSearch(this.allUsers);

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       )
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: AnimatedIcon(
//         icon: AnimatedIcons.menu_arrow,
//         progress: transitionAnimation,
//       ),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Container(
//       height: 100.0,
//       width: 300.0,
//       child: ListView.builder(
//         itemCount: query.isEmpty ? 0 : 1,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(query),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Container(
//       height: 100.0,
//       width: 300.0,
//       child: ListView.builder(
//         itemCount: query.isEmpty ? 0 : allUsers.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(allUsers[index].name),
//             subtitle: Text(allUsers[index].category),
//             onTap: () {
//               showResults(context);
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class EmployerList extends StatelessWidget {
//   final List<User> employers;

//   EmployerList(this.employers);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: employers.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(employers[index].name),
//           subtitle: Text(employers[index].category),
//         );
//       },
//     );
//   }
// }

// class EmployeeList extends StatelessWidget {
//   final List<User> employees;

//   EmployeeList(this.employees);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: employees.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(employees[index].name),
//           subtitle: Text(employees[index].category),
//         );
//       },
//     );
//   }
// }