import 'package:flutter/material.dart';
import 'package:sms_firebase/l10n/messages.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../query_result_view.dart';
import '../../schema.gql.dart';
import '../register.graphql.dart';

class RegisterContactDetailsView extends StatefulWidget {
  final String? firstName;
  final String? lastName;
  final String? certificateNumber;
  final Enum$Gender? gender;
  final String? address;
  final Function() onContinue;
  final Function(bool loading) onLoadingStateUpdated;

  const RegisterContactDetailsView({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.certificateNumber,
    required this.gender,
    required this.address,
    required this.onContinue,
    required this.onLoadingStateUpdated,
  });

  @override
  State<RegisterContactDetailsView> createState() => _RegisterContactDetailsViewState();
}

class _RegisterContactDetailsViewState extends State<RegisterContactDetailsView> {
  final _formKey = GlobalKey<FormState>();
  Enum$Gender? gender;
  String? address;
  String? email;
  String? firstName;
  String? lastName;
  String? certificateNumber;

  @override
  void initState() {
    super.initState();
    gender = widget.gender;
    address = widget.address;
    email = "";
    firstName = widget.firstName;
    lastName = widget.lastName;
    certificateNumber = widget.certificateNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).register_contact_details_title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: firstName,
                      onChanged: (value) => setState(() => firstName = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).firstname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: lastName,
                      onChanged: (value) => setState(() => lastName = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).lastname),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      initialValue: certificateNumber,
                      onChanged: (value) => setState(() => certificateNumber = value),
                      validator: (value) => value?.isEmpty ?? true
                          ? S.of(context).form_required_field_error
                          : null,
                      decoration: InputDecoration(
                          isDense: true,
                          labelText: S.of(context).certificate_number),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: DropdownButtonFormField<Enum$Gender>(
                          value: gender,
                          decoration: InputDecoration(
                              isDense: true, labelText: S.of(context).gender),
                          items: <DropdownMenuItem<Enum$Gender>>[
                            DropdownMenuItem(
                              value: Enum$Gender.Male,
                              child: Text(S.of(context).gender_male),
                            ),
                            DropdownMenuItem(
                                value: Enum$Gender.Female,
                                child: Text(S.of(context).gender_female))
                          ],
                          onSaved: (Enum$Gender? value) {
                            gender = value;
                          },
                          onChanged: (value) {
                            gender = value;
                          }),
                    ),
                    const SizedBox(height: 8),
                    
 
                    
                    TextFormField(
                      initialValue: address,
                      onChanged: (value) {
                        address = value;
                      },
                      validator: (value) => value?.isEmpty ?? true
                        ? S.of(context).form_required_field_error
                        : null,
                      decoration: InputDecoration(
                          isDense: true, labelText: S.of(context).address),
                    ),
                  ]),
            ),
          ),
        ),
        Mutation$UpdateProfile$Widget(
            options: WidgetOptions$Mutation$UpdateProfile(
              onCompleted: (result, parsedData) {
                widget.onLoadingStateUpdated(false);
                widget.onContinue();
              },
              onError: (error) => {
                print('Error en la pagina de registro: $error'),
                showOperationErrorMessage(context, error)},
            ),
            builder: (runMutation, result) {
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(

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
                    if (driverId == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('No se encontró el driverId.')),
                      );
                      widget.onLoadingStateUpdated(false);
                      return;
                    }

                    // Ejecutar mutación manualmente
                    final client = GraphQLProvider.of(context).value;
                    const String mutation = '''
                      mutation UpdateOneDriver(\$input: UpdateOneDriverInput!) {
                        updateOneDriver(input: \$input) {
                          id
                        }
                      }
                    ''';
                    try {
                      final result = await client.mutate(MutationOptions(
                        document: gql(mutation),
                        variables: {
                          'input': {
                            'id': driverId,
                            'update': {
                              'firstName': firstName,
                              'lastName': lastName,
                              'certificateNumber': certificateNumber,
                              'gender': gender?.name,
                              'address': address,
                            }
                          }
                        },
                      ));
                      if (result.hasException) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error al guardar: ${result.exception.toString()}')),
                        );
                        widget.onLoadingStateUpdated(false);
                        return;
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error al guardar: $e')),
                      );
                      widget.onLoadingStateUpdated(false);
                      return;
                    }
                    widget.onLoadingStateUpdated(false);
                    widget.onContinue();
                  },
                  child: Text(S.of(context).action_continue

            )),
              );
            })
      ],

    );
  }
}
