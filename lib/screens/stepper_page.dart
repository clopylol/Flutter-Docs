import 'package:flutter/material.dart';

class StepperExamplePage extends StatefulWidget {
  StepperExamplePage({Key key}) : super(key: key);

  @override
  _StepperExamplePageState createState() => _StepperExamplePageState();
}

class _StepperExamplePageState extends State<StepperExamplePage> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  List<Step> steps = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Kullanımı'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stepper(
              type: stepperType, //Yatay mı dikey mi olacağını belirler
              physics: ScrollPhysics(),
              currentStep: _currentStep, //Hangi stepte olduğumuzu belirtir.
              onStepTapped: (step) => tapped(step),
              onStepContinue: continued,
              onStepCancel: cancel,
              //Burayı bi listte tutup verebiliriz. daha temiz olur.
              steps: [
                Step(
                  title: Text('Hesap'),
                  content: Column(
                    children: [
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Kullanıcı Adınız'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Şifreniz'),
                      ),
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: Text('Adres'),
                  content: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Ev Adresiniz'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Posta Kodu'),
                      ),
                    ],
                  ),
                  isActive: _currentStep >= 1,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: Text('Telefon Numaranız'),
                  content: Column(
                    children: [
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Telefon Numaranız'),
                      ),
                    ],
                  ),
                  isActive: _currentStep >= 2,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,

                  //StepState.indexed
                  //StepState.editing
                  //StepState.error,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: switchStepsType, //Yatay Dikey Değiştir.
      ),
    );
  }

  //Yatay - Dikey Değiştir.
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);

    _currentStep = 0;
  }

  //Seçilen Step
  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
