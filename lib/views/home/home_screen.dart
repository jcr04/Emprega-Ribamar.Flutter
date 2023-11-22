import 'package:emprega_ribamar/widgets/cardbuttom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emprega Ribamar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            CardButton(
              icon: Icons.search,
              text: 'Buscar Vagas',
              color: Colors.blue,
              onTap: () {
                // Navegar para a tela de busca de vagas
              },
            ),
            CardButton(
              icon: Icons.person,
              text: 'Meu Perfil',
              color: Colors.blue,
              onTap: () {
                // Navegar para a tela do perfil do usuário
              },
            ),
            CardButton(
              icon: Icons.business_center,
              text: 'Criar Currículo',
              color: Colors.blue,
              onTap: () {
                // Navegar para a tela de criação de currículo
              },
            ),
            CardButton(
              icon: Icons.info,
              text: 'Informações sobre Benefícios',
              color: Colors.blue,
              onTap: () {
                // Navegar para a tela de informações sobre benefícios
              },
            ),
            CardButton(
              icon: Icons.work,
              text: 'Oficinas de Capacitação',
              color: Colors.red,
              onTap: () {
                // Navegar para a tela de oficinas de capacitação
              },
            ),
          ],
        ),
      ),
    );
  }
}
