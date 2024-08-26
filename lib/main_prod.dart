import 'package:flutter/material.dart';
import 'DocDoc.dart';
import 'core/Di/dependency injection.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(
    DocDoc(),
  );
}



