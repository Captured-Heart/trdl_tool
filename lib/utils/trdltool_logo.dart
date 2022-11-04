import '/all_imports.dart';

class TRDLtoolLogo extends StatelessWidget {
  const TRDLtoolLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.railway_alert,
          size: 70.0,
          color: greenMoneyColorsLight.primary,
        ),
        const SizedBoxW(),
        Expanded(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'TRDLtool',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                color: greenMoneyColorsLight.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
