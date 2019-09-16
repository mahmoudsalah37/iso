import 'package:flutter_web/material.dart';
import 'package:iso/pages/Property_of_customers_and_external_providers/sub/property_of_customer_and_external_providers.dart';

class PropertyOfCustomersAndExternalProviders extends StatefulWidget {
  final int child;
  PropertyOfCustomersAndExternalProviders(this.child);
  _PropertyOfCustomersAndExternalProvidersState createState() => _PropertyOfCustomersAndExternalProvidersState();
}

class _PropertyOfCustomersAndExternalProvidersState extends State<PropertyOfCustomersAndExternalProviders> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        PropertyOfCustomersAndExternalProvidersPage(),
      ],
    );
  }
}
