import 'package:flutter/material.dart';
import 'package:part_9/models/user.dart';
import 'package:part_9/screens/UserDetailScreen.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

List<User> usersList = [
  User(
      age: 16,
      firstName: 'ivan',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://weblinks.ru/wp-content/uploads/2021/04/1-m00-0b-c3-rb8bwl3md6wabxnzaacweicyw9g934.jpg'),
  User(
      age: 15,
      firstName: 'neivan',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar: ''),
  User(
      age: 78,
      firstName: 'oven',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://www.perunica.ru/uploads/posts/2011-10/1319832745_0_6065c_b70de565_l.jpg'),
];

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(
                    user: usersList[index],
                  ),
                ),
              );
            },
            child: Card(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        child: usersList[index].avatar == ''
                            ? Image.network(
                                'https://avatarzo.ru/wp-content/uploads/z-za-pobedu-red.jpg',
                                fit: BoxFit.cover,
                              )
                            : Image.network(usersList[index].avatar)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Имя:' + usersList[index].firstName,
                            textAlign: TextAlign.left,
                          ),
                          Text('Фамилия:' + usersList[index].lastName),
                          Text('Возраст:' + usersList[index].age.toString()),
                          Text('Телефон:' + usersList[index].phone),
                          Text('Телефон:' + usersList[index].email),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
          );
        });
  }
}
