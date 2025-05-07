import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({super.key});

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();

  bool showQuestion2 = false;
  bool showQuestion3 = false;
  bool showQuestion4 = false;

  // Variables para las opciones seleccionadas
  String? selectedOption1;
  String? selectedOption2;
  String? selectedOption3;
  String? selectedOption4;
  DateTime? selectedDate;

  // Opciones para cada pregunta
  final List<String> options1 = [
    "Ropa",
    "Celular",
    "Cable",
    "Llaves",
    "Gafas",
    "Reloj",
    "Sombrilla",
    "Audifonos"
  ];
  final List<String> options2 = [
    "Bloque 1",
    "Bloque 2",
    "Bloque 3",
    "Bloque 4",
    "Bloque 5",
    "Bloque 6"
  ];
  final List<String> options3 = ["Día A", "Día B", "Día C"];
  // final List<String> options4 = ["Correo A", "Correo B", "Correo C"];

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

    _controller3.addListener(() {
      if (_controller3.text.isNotEmpty && !showQuestion3) {
        setState(() => showQuestion4 = true);
      }
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.name),
        centerTitle: true,
      ),
      body: Center(
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
                        // Primera pregunta
                        SizedBox(
                          width: 300,
                          child: DropdownButton<String>(
                            value: selectedOption1,
                            hint: const Text("¿Que encontraste?"),
                            isExpanded: true,
                            items: options1.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedOption1 = newValue;
                                if (newValue != null) showQuestion2 = true;
                              });
                            },
                          ),
                        ),

                        // Segunda pregunta
                        if (showQuestion2) ...[
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 300,
                            child: DropdownButton<String>(
                              value: selectedOption2,
                              hint: const Text("¿Dónde lo encontraste?"),
                              isExpanded: true,
                              items: options2.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedOption2 = newValue;
                                  if (newValue != null) showQuestion3 = true;
                                });
                              },
                            ),
                          ),
                        ],

                        // Tercera pregunta
                        if (showQuestion3) ...[
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 300,
                            child: GestureDetector(
                              onTap: () async {
                                final DateTime? picked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime.now(),
                                );
                                if (picked != null && picked != selectedDate) {
                                  setState(() {
                                    selectedDate = picked;
                                    showQuestion4 =
                                        true; // Mostrar siguiente pregunta
                                  });
                                }
                              },
                              child: AbsorbPointer(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "¿Cuándo lo encontraste?",
                                    border: OutlineInputBorder(),
                                    hintText: selectedDate != null
                                        ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                                        : "Selecciona una fecha",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],

                        // Cuarta pregunta
                        if (showQuestion4) ...[
                          const SizedBox(height: 16),
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
      ),
    );
  }
}
