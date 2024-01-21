import 'package:flutter/material.dart';

// cooling_system/cooling_status_page.dart
import 'package:flutter/material.dart';
import 'cooling_controller.dart';

class CoolingStatusPage extends StatefulWidget {
  const CoolingStatusPage({super.key});

  @override
  _CoolingStatusPageState createState() => _CoolingStatusPageState();
}

class _CoolingStatusPageState extends State<CoolingStatusPage> {
  CoolingController _coolingController = CoolingController();

  @override
  void initState() {
    super.initState();
    // Start temperature simulation when the page is loaded
    _coolingController.startTemperatureSimulation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cooling System Status'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Temperature: ${_coolingController.temperature}°C'),
            SizedBox(height: 20),
            Text(
              _coolingController.isCoolingOn
                  ? 'Cooling is ON'
                  : 'Cooling is OFF',
              style: TextStyle(
                color: _coolingController.isCoolingOn
                    ? Colors.blue
                    : Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _coolingController.toggleCooling();
              },
              child: Text(
                _coolingController.isCoolingOn
                    ? 'Turn Cooling OFF'
                    : 'Turn Cooling ON',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoolingController {
  get temperature => null;
  
  get isCoolingOn => null;

  void startTemperatureSimulation() {}
  
  void toggleCooling() {}
}