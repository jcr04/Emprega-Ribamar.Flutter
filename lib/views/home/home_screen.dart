import 'package:emprega_ribamar/widgets/cardbuttom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emprega Ribamar'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: 'Vagas', icon: Icon(Icons.search)),
            Tab(text: 'Perfil', icon: Icon(Icons.person)),
            Tab(text: 'Benefícios', icon: Icon(Icons.card_giftcard)),
          ],
        ),
        backgroundColor: primaryColor,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildVagasTab(context),
          buildProfileTab(context),
          buildBenefitsTab(context),
        ],
      ),
    );
  }

  Widget buildVagasTab(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    List<String> vagas = ['Vaga 1', 'Vaga 2', 'Vaga 3'];

    return ListView.separated(
      itemCount: vagas.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        return CardButton(
          icon: Icons.work,
          text: vagas[index],
          color: primaryColor,
          onTap: () {
            // Implementar ação quando uma vaga é tocada
          },
        );
      },
    );
  }

  Widget buildProfileTab(BuildContext context) {
    // Informações do usuário
    String nome = 'João';
    String idade = '25';
    String cpf = 'XXX.XXX.XXX-XX';
    String ocupacao = 'Engenheiro de Software';

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        GestureDetector(
          onTap: () async {
            // Implementar funcionalidade para trocar foto
            // Por exemplo, abrir a galeria e permitir que o usuário selecione uma nova foto
          },
          child: const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'lib/assets/imagens/joao.jpeg'), // Utilize AssetImage para imagens locais
            backgroundColor: Colors.transparent,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          nome,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        Text(
          'Idade: $idade',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        Text(
          'CPF: $cpf',
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        Text(
          'Ocupação: $ocupacao',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          child: const Text('Editar Perfil'),
          onPressed: () {
            // Implementar lógica para editar perfil
          },
        ),
      ],
    );
  }

  Widget buildBenefitsTab(BuildContext context) {
    List<String> beneficios = ['Benefício 1', 'Benefício 2', 'Benefício 3'];

    return ListView.separated(
      itemCount: beneficios.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(beneficios[index]),
          leading: const Icon(Icons.check_circle_outline),
          onTap: () {
            // Implementar ação quando um benefício é tocado
          },
        );
      },
    );
  }
}
