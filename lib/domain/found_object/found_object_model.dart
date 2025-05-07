import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'found_object_model.freezed.dart';

part 'found_object_model.g.dart';

@freezed
class FoundObjectModel with _$FoundObjectModel {
  const factory FoundObjectModel({
    required String idObject,
    required String idFinder,
    required String gmailFinder,
    required String what, // podemos cambiar esto para que sea de tipo Enum
    required String where, // podemos cambiar esto para que sea de tipo Enum
    required DateTime when,
  }) = _FoundObjectModel;

  factory FoundObjectModel.fromJson(Map<String, dynamic> json) =>
      _$FoundObjectModelFromJson(json);

  /// Factory auxiliar que genera un ID automático
  factory FoundObjectModel.create({
    required String idFinder,
    required String gmailFinder,
    required String what,
    required String where,
    required DateTime when,
  }) {
    final uuid = const Uuid().v4().split('-').first; // Genera un ID único
    return FoundObjectModel(
      idObject: uuid,
      idFinder: idFinder,
      gmailFinder: gmailFinder,
      what: what,
      where: where,
      when: when,
    );
  }

  /// Factory auxiliar que genera un modelo vacio
  factory FoundObjectModel.empty() {
    return FoundObjectModel(
      idObject: "",
      idFinder: "",
      gmailFinder: "",
      what: "",
      where: "",
      when: DateTime.now(),
    );
  }
}

// 🔹 ¿Cómo se usa?

// final foundObjectModel  = FoundObjectModel.create(
//   idFinder: 'usuario123',
//   gmailFinder: 'correo@ejemplo.com',
//   what: 'Mochila',
//   where: 'Parque Central',
//   when: DateTime.now(),
// );

// FoundObjectModel foundObjectModel = FoundObjectModel.empty();