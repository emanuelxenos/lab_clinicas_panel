import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_panel/src/pages/panel/widgets/panel_primary_widget.dart';
import 'package:fe_lab_clinicas_panel/src/pages/panel/widgets/password_tile.dart';
import 'package:flutter/material.dart';

class PanelPage extends StatelessWidget {
  const PanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: LabClinicasAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: sizeOf.width * .4,
                  child: const PanelPrimaryWidget(
                      passwordLabel: 'Chamando Senha',
                      password: 'BG5898',
                      deskNumber: '45',
                      lableColor: Colors.blue,
                      buttonColor: LabClinicasTheme.orangeColor),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: sizeOf.width * .4,
                  child: const PanelPrimaryWidget(
                      passwordLabel: 'Chamando Senha',
                      password: 'BG5898',
                      deskNumber: '45',
                      lableColor: Colors.blue,
                      buttonColor: LabClinicasTheme.blueColor),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              color: LabClinicasTheme.orangeColor,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Últimos Chamados',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: LabClinicasTheme.orangeColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
