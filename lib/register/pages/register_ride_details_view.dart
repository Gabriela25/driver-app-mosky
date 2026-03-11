import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sms_firebase/l10n/messages.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';

class RegisterRideDetailsView extends StatefulWidget {
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterRideDetailsView({super.key, required this.onContinue, required this.onLoadingStateUpdated});

  @override
  State<RegisterRideDetailsView> createState() => _RegisterRideDetailsViewState();
}

class _RegisterRideDetailsViewState extends State<RegisterRideDetailsView> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController carPlateController;
  late final TextEditingController carProductionYearController;
  String? carId;
  String? carColorId;
  String? carBrandId;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    carPlateController = TextEditingController();
    carProductionYearController = TextEditingController();
  }

  @override
  void dispose() {
    carPlateController.dispose();
    carProductionYearController.dispose();
    super.dispose();
  }

  

  Future<Map<String, List<Map<String, String>>>> fetchBrandsAndModels(GraphQLClient client) async {
    const String query = '''
      query GetCarBrandsAndModels {
        carBrands { id name }
        carModels { id name brand { id } }
        carColors { id name }
      }
    ''';
    final result = await client.query(QueryOptions(document: gql(query)));
    if (result.hasException) {
      throw Exception(result.exception.toString());
    }
    final brands = (result.data?['carBrands'] as List<dynamic>?)
        ?.map((e) => {
              'id': e['id'].toString(),
              'name': e['name'].toString(),
            })
        .toList() ?? <Map<String, String>>[];

    final models = (result.data?['carModels'] as List<dynamic>?)
        ?.map((e) => {
              'id': e['id'].toString(),
              'name': e['name'].toString(),
              'brandId': e['brand']['id'].toString(),
            })
        .toList() ?? <Map<String, String>>[];
    final colors = (result.data?['carColors'] as List<dynamic>?)
        ?.map((e) => {
              'id': e['id'].toString(),
              'name': e['name'].toString(),
             
            })
        .toList() ?? <Map<String, String>>[];

    return {'brands': brands, 'models': models, 'colors': colors};
  }

  @override
  Widget build(BuildContext context) {
    final client = GraphQLProvider.of(context).value;
    return FutureBuilder<Map<String, List<Map<String, String>>>>(
      future: fetchBrandsAndModels(client),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        final brands = snapshot.data?['brands'] ?? [];
        final models = snapshot.data?['models'] ?? [];
        final colors = snapshot.data?['colors'] ?? [];
        final filteredModels = models.where((model) => model['brandId'] == carBrandId).toList();

        return Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              controller: carPlateController,
                              validator: (value) => value?.isEmpty ?? true
                                  ? S.of(context).form_required_field_error
                                  : null,
                              decoration: InputDecoration(
                                  isDense: true,
                                  labelText: S.of(context).plate_number),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: TextFormField(
                              controller: carProductionYearController,
                              keyboardType: TextInputType.number,
                              validator: (value) => value?.isEmpty ?? true
                                  ? S.of(context).form_required_field_error
                                  : null,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                  isDense: true,
                                  labelText: S.of(context).car_production_year),
                            ),
                          )
                        ],
                      ),
                        const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: carBrandId,
                        decoration: InputDecoration(
                            isDense: false, labelText: S.of(context).car_model),
                        items: brands
                            .map((e) => DropdownMenuItem(
                                value: e['id'], child: Text(e['name'] ?? '')))
                            .toList(),
                        onChanged: (String? id) => setState(() => carBrandId = id),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: carId,
                        decoration: InputDecoration(
                            isDense: false, labelText: S.of(context).car_model),
                        items: filteredModels
                            .map((e) => DropdownMenuItem(
                                value: e['id'], child: Text(e['name'] ?? '')))
                            .toList(),
                        onChanged: (String? id) => setState(() => carId = id),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: carColorId,
                        decoration: InputDecoration(
                            isDense: false, // Ajustado para hacer el campo más alto
                            labelText: S.of(context).car_color),
                        items: colors
                            .map((e) => DropdownMenuItem(
                                value: e['id'], child: Text(e['name'] ?? '')))
                            .toList(),
                        onChanged: (String? id) => setState(() => carColorId = id),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF3CD7AC)),
                  ),
                  onPressed: () async {
                    bool? isValid = _formKey.currentState?.validate();
                    if (isValid != true) return;
                    _formKey.currentState?.save();
                    widget.onLoadingStateUpdated(true);
                    // Obtener driverId de Hive
                    String? driverId;
                    try {
                      final box = await Hive.openBox('user');
                      driverId = box.get('driverId')?.toString();
                    } catch (_) {
                      driverId = null;
                    }
                    print('DEBUG: driverId=$driverId, carId=$carId, carColorId=$carColorId, carPlate=${carPlateController.text}, carProductionYear=${carProductionYearController.text}');
                    if (driverId == null || carId == null || carColorId == null || carPlateController.text.isEmpty || carProductionYearController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Faltan datos requeridos para guardar.')),
                      );
                      widget.onLoadingStateUpdated(false);
                      return;
                    }
                    // Mutación para actualizar el driver
                    const String mutation = '''
                      mutation UpdateOneDriver(\$input: UpdateOneDriverInput!) {
                        updateOneDriver(input: \$input) {
                          id
                        }
                      }
                    ''';
                    print('DEBUG: Ejecutando mutación updateOneDriver...');
                    try {
                      final result = await client.mutate(MutationOptions(
                        document: gql(mutation),
                        variables: {
                          'input': {
                            'id': driverId,
                            'update': {
                              'carId': carId,
                              'carBrandId': carBrandId, 
                              'carColorId': carColorId,
                              'carPlate': carPlateController.text,
                              'carProductionYear': int.tryParse(carProductionYearController.text),
                            }
                          },
                        },
                      ));
                      print('DEBUG: Resultado de la mutación: ${result.data}');
                      if (result.hasException) {
                        print('DEBUG: Excepción en la mutación: ${result.exception}');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error al guardar: ${result.exception.toString()}')),
                        );
                        widget.onLoadingStateUpdated(false);
                        return;
                      }
                    } catch (e) {
                      print('DEBUG: Error en el catch de la mutación: $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error al guardar: $e')),
                      );
                      widget.onLoadingStateUpdated(false);
                      return;
                    }
                    widget.onLoadingStateUpdated(false);
                    widget.onContinue();
                  },
                  child: Text(S.of(context).action_continue),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
