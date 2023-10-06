import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _amountOfGlassTEController = TextEditingController(text: '1');
  List<WaterTrack> waterConsume = [];
  int totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Tracker'),
      ),

      body: Column(
        children: [
          Text('Total Consume',style: Theme.of(context).textTheme.titleLarge,),
          Text('${totalAmount}',style: Theme.of(context).textTheme.headlineLarge,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 80,
                  child: TextField(
                    controller: _amountOfGlassTEController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  )),
              SizedBox(width: 20,),
              ElevatedButton(
                onPressed: (){
                  int amount = int.tryParse(_amountOfGlassTEController.text.trim()) ?? 1;
                  totalAmount += amount;
                  WaterTrack waterTrack = WaterTrack(DateTime.now(), 1);
                  waterConsume.add(waterTrack);
                  setState(() {});
                },
                child: Text('Add')),
            ],
          ),
          SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
                itemCount: waterConsume.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(2),
                    child: Card(
                      shadowColor: Colors.black38,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black38,
                          radius: 25,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(DateFormat('HH:MM:s a dd-MM-yyyy').format(waterConsume[index].time)),
                        
                        trailing: Text('${waterConsume[index].numOfGlass}'),


                      ),
                    ),
                  );
                }),
          ),
        ],
      ),

    );
  }
}

class WaterTrack {
  final DateTime time;
  final int numOfGlass;

  WaterTrack(this.time, this.numOfGlass);
}

