import 'dart:convert';

import 'package:pocpay/data/http/exceptions.dart';
import 'package:pocpay/data/http/http_client.dart';
import 'package:pocpay/data/models/usuario/usuario.dart';

abstract class IUsuarioRepository {
  Future<List<UsuarioModel>> getUsuarios();
}

class UsuarioRepository implements IUsuarioRepository {
  final IHttpClient client;

  UsuarioRepository({required this.client});

  @override
  Future<List<UsuarioModel>> getUsuarios() async {
    final response = await client.get(
      url: "http://localhost:8080/usuarios",
    );

    if (response.statusCode == 200) {
      final List<UsuarioModel> usuarios = [];

      final body = jsonDecode(response.body);

      body.map((item) {
        final UsuarioModel usuario = UsuarioModel.fromMap(item);
        usuarios.add(usuario);
      }).toList();
    } else if (response.statusCode == 404) {
      throw NotFoundException("Sem usuários cadastrados.");
    }
    throw Exception("Erro ao contatar servidor de usuários.");
  }
}
