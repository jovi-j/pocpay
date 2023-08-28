import 'dart:ffi';

import 'package:big_decimal/big_decimal.dart';

class UsuarioModel {
  final Long id;
  final String nome;
  final String email;
  final String senha;
  final String documento;
  final BigDecimal saldo;
  final String tipoUsuario;

  UsuarioModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.senha,
    required this.documento,
    required this.saldo,
    required this.tipoUsuario,
  });

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
        id: map['id'],
        nome: map['nome'],
        email: map['email'],
        senha: map['senha'],
        documento: map['documento'],
        saldo: map['saldo'] * 1.0,
        tipoUsuario: map['tipoUsuario']);
  }
}
