import 'package:flutter/material.dart';
import 'package:lostudea/constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.fullName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.name),
          centerTitle: true,
        ),
        body: const LobbyScreen(),
      ),
    );
  }
}

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({super.key});

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();

  bool showQuestion2 = false;
  bool showQuestion3 = false;

  @override
  void initState() {
    super.initState();

    _controller1.addListener(() {
      if (_controller1.text.isNotEmpty && !showQuestion2) {
        setState(() => showQuestion2 = true);
      }
    });

    _controller2.addListener(() {
      if (_controller2.text.isNotEmpty && !showQuestion3) {
        setState(() => showQuestion3 = true);
      }
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "¿Encontraste un Objeto?",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                // Formulario progresivo
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: _controller1,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "¿Cuál es el objeto?"),
                        ),
                      ),
                      if (showQuestion2) ...[
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            controller: _controller2,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "¿Dónde lo encontraste?"),
                          ),
                        ),
                      ],
                      if (showQuestion3) ...[
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            controller: _controller3,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "¿Cuándo lo encontraste?"),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Línea divisoria
          Container(
            height: 1,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(horizontal: 40),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "¿Perdiste un Objeto?",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
