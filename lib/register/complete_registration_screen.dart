import 'package:flutter/material.dart';

class CompleteRegistrationScreen extends StatelessWidget {
  final VoidCallback onContinue;
  const CompleteRegistrationScreen({Key? key, required this.onContinue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.warning_amber_rounded, size: 80, color: Colors.orange),
              SizedBox(height: 24),
              Text(
                'Por favor completa tu registro',
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: onContinue,
                child: Text('Completar registro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
