// ignore_for_file: sized_box_for_whitespace, unused_element


import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserProfile extends StatelessWidget {

   List<MenuRowData> firstMenuRow =[
    MenuRowData(Icons.favorite,'Избранное'),
    MenuRowData(Icons.call,'Звонки'),
    MenuRowData(Icons.computer,'Устройства'),
    MenuRowData(Icons.folder,'Папки с чатами'),
  ];
    List<MenuRowData> secondtMenuRow =[
    MenuRowData(Icons.notifications,'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip,'Конфиденциальность'),
    MenuRowData(Icons.data_usage,'Данные и память'),
    MenuRowData(Icons.brush,'Оформление'),
    MenuRowData(Icons.language,'Язык'),
  ];
  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,   
      appBar: AppBar( 
        title:  const Text('Настройки',),
      ),
      body:  Container(       
        width: double.infinity,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const _UserInterface(),
             const SizedBox(height: 30,),
            _MenuWidget(menuRow:firstMenuRow),
            const SizedBox(height: 30,),
            _MenuWidget(menuRow:secondtMenuRow),
                    
          ],
        ),
      ),
    );
   
  }
}

class MenuRowData {
  final IconData icon;
  final String text;
  MenuRowData(this.icon,this.text);
}


class _MenuWidget extends StatelessWidget {
  const _MenuWidget({super.key, required this.menuRow});
  final List<MenuRowData> menuRow;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child:  Column(
        
        children: menuRow.map((data)=> _MenuWidgetRow(data:data )).toList(),),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  
  final MenuRowData data;
  
  const _MenuWidgetRow({super.key, required this.data, });
  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(data.icon),
                const SizedBox(width: 15,),
                Expanded(child: Text(data.text)),
                const Icon(Icons.chevron_right),
                
            
              ],),
          );
  }
}

class _UserInterface extends StatelessWidget {
  const _UserInterface({super.key});

  @override
  Widget build( context) {
    return  Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          SizedBox(height: 30,),
          _AvatarWidget(),
          SizedBox(height: 30,),
           _UserNameWidget(),
          SizedBox(height: 10,),
           _NumberPhoneWidget(),
           SizedBox(height: 10,),
          _NicknameWidget(),
        ],
      ),

    );
  }
}
class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Placeholder()
      );
  }
}




class _NicknameWidget extends StatelessWidget {
  const _NicknameWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@nickname',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        

      ),
      );
  }
}

class _NumberPhoneWidget extends StatelessWidget {
  const _NumberPhoneWidget();

  @override
  Widget build(BuildContext context) {
    return const Text('Номер телефона');
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Имя Фамилия',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,

      ),
    );
  }
}