import 'package:flutter/material.dart';
import 'package:tawwon/screens/organization_accepted_donations.dart';
class workHours extends StatefulWidget {
  const workHours({super.key});

  @override
  State<workHours> createState() => _workHoursState();
}

class _workHoursState extends State<workHours> {
   TimeOfDay startTime = TimeOfDay(hour: 0, minute: 0); 
    TimeOfDay endTime = TimeOfDay(hour: 23, minute: 59);

  
  Future<void> selectTime(bool isStart) async {
    
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      
      setState(() {
        if (isStart) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
             Padding(
               padding: const EdgeInsets.only(bottom: 110),
               child: Positioned(
                
                  top: 0,
                  child: Text(
                    'تفاصيل المنظمة',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  
                ),
             ),
            Text('من الساعة:', style: TextStyle(color: Colors.white, fontSize: 20),),
            // To display the start time
            Text(
              startTime == null ? 'Select start time' : ' ${startTime.format(context)}',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            // To show the time picker for start time
            ElevatedButton(
              onPressed: () {
                selectTime(true);
              },
              child: Text('اختر وقت بداية العمل'),
            ),
            // To display the end time
            SizedBox(height: 20),
            Text('الى:', style: TextStyle(color: Colors.white, fontSize: 20),),
            Text(
              endTime == null ? 'Select end time' : ' ${endTime.format(context)}',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            // To show the time picker for end time
            ElevatedButton(
              onPressed: () {
                selectTime(false);
              },
              child: Text('اختر وقت نهاية العمل'),
            ),
            SizedBox(height: 20,),
             ElevatedButton(
            onPressed: () {
              Navigator.push(
             context,
            MaterialPageRoute(builder: (context) => const organ_accept()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              minimumSize: MaterialStateProperty.all<Size>(const Size(175, 40)),
            ),
            child: const Text(
              'التالي',
              style: TextStyle(
                color: Color(0xFF213753),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
