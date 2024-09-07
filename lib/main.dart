import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'app.dart';
import 'simple_bloc_observer.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
		options: const FirebaseOptions(
			apiKey: "AIzaSyCEKfwXg4GZQ_tUDfu6Ubii1AChpEp5I34",
			appId: '834470669072:android:9597096b757d04cc949395',
			messagingSenderId: '834470669072',
			projectId: 'tinderproject-30a1c',
		),
	);
	Bloc.observer = SimpleBlocObserver();
	runApp(MyApp(FirebaseUserRepo()));
}
