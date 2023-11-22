import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emprega Ribamar'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Buscar Vagas'),
              onTap: () {
                // Navegar para a tela de busca de vagas
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Meu Perfil'),
              onTap: () {
                // Navegar para a tela do perfil do usuário
              },
            ),
            ListTile(
              leading: const Icon(Icons.business_center),
              title: const Text('Criar Currículo'),
              onTap: () {
                // Navegar para a tela de criação de currículo
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Informações sobre Benefícios'),
              onTap: () {
                // Navegar para a tela de informações sobre benefícios
              },
            ),
            // Adicione mais opções conforme necessário
          ],
        ).toList(),
      ),
    );
  }
}
