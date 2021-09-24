import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl3.bold.color(context.accentColor).make(),
        "Trending products".text.make().pOnly(bottom: 8),
      ],
    );
  }
}
