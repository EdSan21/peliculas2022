import 'package:flutter/material.dart';
import 'package:peliculas2022/providers/movies_provider.dart';
import 'package:peliculas2022/widgets/card_swipper.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class VeterinariaDoggy extends StatefulWidget {
  const VeterinariaDoggy({Key? key}) : super(key: key);

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<VeterinariaDoggy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Veterinaria Doggy'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          children: [
            _inputMascota(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputDuenio(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputTelDuenio(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputRaza(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputSexo(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputEdad(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputTipoPet(), // TextField con múltiples opciones de decoración
            Divider(),
            _inputFechaNacimiento(), // TextField con múltiples opciones de decoración
            Divider(),
          ],
        ));
  }

  Widget _inputMascota() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      maxLength: 20,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          // Establece un borde cicular/otro  alrededor de la caja de texto
          borderRadius: BorderRadius.circular(15.0),
        ),

        hintText:
            'Nombre de la mascota', // Texto que aparece dentro de la caja y desaparece al escribir
        labelText:
            'Mascota', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
        helperText:
            'Introduce el nombre de la mascota', // Texto que aparece a la izquierda y abajo de la caja
        // Widget que aparece a la derecha dentro de la caja
        icon: Icon(
            Icons.pets), // Widget que aparece a la izquierda fuera de la caja
      ),
    );
  }
}

Widget _inputDuenio() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 20,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Nombre del dueño', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Dueño', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce el nombre del dueño', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon: Icon(
          Icons.person), // Widget que aparece a la izquierda fuera de la caja
    ),
  );
}

Widget _inputTelDuenio() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 8,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Teléfono del dueño', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Teléfono', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce el Teléfono del dueño', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon: Icon(
          Icons.phone), // Widget que aparece a la izquierda fuera de la caja
    ),
  );
}

Widget _inputRaza() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 20,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Raza de la mascota', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Raza', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce la Raza', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon: Icon(Icons
              .check_box_outlined // Widget que aparece a la izquierda fuera de la caja
          ),
    ),
  );
}

Widget _inputSexo() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 10,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Sexo de la mascota', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Sexo', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce el Sexo', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon:
          Icon(Icons.male // Widget que aparece a la izquierda fuera de la caja
              ),
    ),
  );
}

Widget _inputEdad() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 3,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Edad de la mascota', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Edad', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce la Edad de la mascota', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon: Icon(Icons
              .calendar_month // Widget que aparece a la izquierda fuera de la caja
          ),
    ),
  );
}

Widget _inputTipoPet() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 10,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Tipo de la mascota', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Tipo', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce el Tipo de la mascota', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon: Icon(Icons
              .type_specimen // Widget que aparece a la izquierda fuera de la caja
          ),
    ),
  );
}

Widget _inputFechaNacimiento() {
  return TextField(
    textCapitalization: TextCapitalization.words,
    maxLength: 10,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        // Establece un borde cicular/otro  alrededor de la caja de texto
        borderRadius: BorderRadius.circular(15.0),
      ),

      hintText:
          'Nacimiento de la mascota', // Texto que aparece dentro de la caja y desaparece al escribir
      labelText:
          'Fecha', // Texto qye aparece encima de la caja AL PULSAR EN EL INTERIOR PARA ESCRIBIR
      helperText:
          'Introduce la fecha de nacimiento', // Texto que aparece a la izquierda y abajo de la caja
      // Widget que aparece a la derecha dentro de la caja
      icon: Icon(Icons
              .health_and_safety // Widget que aparece a la izquierda fuera de la caja
          ),
    ),
  );
}
