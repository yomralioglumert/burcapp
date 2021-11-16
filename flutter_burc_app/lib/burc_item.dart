

import 'package:flutter/material.dart';
import 'package:flutter_burc_app/burc_detay.dart';
import 'package:flutter_burc_app/modeller/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        shadowColor: Colors.red.shade300,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              /* Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
                ),
              ); */
              Navigator.pushNamed(context, '/burcDetay',
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burc_KucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: TextStyle(color: Colors.deepPurple, fontSize: 24),
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
            trailing: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
