import 'package:trdl_tool/core/all_imports.dart';

class TRDLtoolLogo extends StatelessWidget {
  const TRDLtoolLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.railway_alert,
          size: 64.0,
          color: flexSchemeLight.primary,
        ),
        const SizedBoxW(),
        Expanded(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'TRDLtool',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 64.0,
                color: flexSchemeLight.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
