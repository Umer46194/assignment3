import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DECOR',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black87),

        actions: <Widget> [

        ],
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody(){


    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding
              (
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildJournalEntery(),
                  const Divider(),
                  _buildJournalWeather(),
                  const Divider(),
                  _buildJournalTags(),
                  const Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Image _buildJournalHeaderImage()
  {
    return const Image(image: AssetImage('assets/images/img.jpg'),
      fit: BoxFit.cover,
    );
  }
  Column _buildJournalEntery()
  {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('BIRTHDAY CELEBRATION',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        Text(
          'It will be an awesome party going to be held tonight.',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );

  }
  Row _buildJournalWeather()
  {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(width: 16.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Wanna party?',
              style: TextStyle(color: Colors.deepOrange),
            ),
          ],
        ),


      ],
    );

  }
  Wrap _buildJournalTags()
  {
    return Wrap(
      spacing: 8.0,
      children: List.generate(7, (int index){
        return Chip(label: Text('Gift ${index + 1}',
          style: const TextStyle(fontSize: 10.0),
        ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey.shade100,
            ),

          ),
          backgroundColor: Colors.grey.shade100,
        );
      }
      ),
    );
  }
  Row _buildJournalFooterImages() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/img1.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/img2.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/img3.png'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

          ),
        ),
      ],
    );
  }

}