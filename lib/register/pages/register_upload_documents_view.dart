import 'dart:convert';


import 'package:client_shared/components/user_avatar_view.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme-ride-conductor.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_gen/gen_l10n/messages.dart';


import '../../config.dart';
import '../../graphql/order.fragment.graphql.dart';
import '../../query_result_view.dart';
import '../register.graphql.dart';

class RegisterUploadDocumentsView extends StatefulWidget {
  final Function() onUploaded;
  final Function(bool loading) onLoadingStateUpdated;
  final String driverId;
  final Fragment$DriverMedia? profilePicture;
  final List<Fragment$DriverMedia> documents;

  const RegisterUploadDocumentsView(
      {super.key,
        required this.onUploaded,
        required this.onLoadingStateUpdated,
        required this.profilePicture,
        required this.documents,
        required this.driverId});

  @override
  State<RegisterUploadDocumentsView> createState() =>
      _RegisterUploadDocumentsViewState();
}

class _RegisterUploadDocumentsViewState
    extends State<RegisterUploadDocumentsView> {
  Fragment$DriverMedia? profilePicture;
  List<Fragment$DriverMedia> documents = [];

  @override
  void initState() {
    documents = widget.documents;
    print('ITERANDO FOTOS');
    for(var i=0;i<documents.length;i++){
      print(documents[i].address);
      if(i==0){
        print(serverUrl + documents[i].address);
        eliminarImagen(serverUrl + documents[i].id);
      }
    }


    profilePicture = widget.profilePicture;
    super.initState();
  }
  Future<void> eliminarImagen(String urlImagen) async {
    try {

      var response = await http.delete(Uri.parse(urlImagen));


      if (response.statusCode == 200) {
        print('Imagen eliminada exitosamente');
      } else {
        print('Error al eliminar la imagen. Código de estado: ${response.statusCode}');
      }
    } catch (e) {
      print('Error al eliminar la imagen: $e');
    }
  }
  void deleteDocument(int index) {
    setState(() {
      documents.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).register_profile_photo_title,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(
                  S.of(context).register_profile_photo_subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 8),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: UserAvatarView(
                        urlPrefix: serverUrl,
                        url: profilePicture?.address,
                        cornerRadius: 10,
                        size: 50,
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: CustomTheme.primaryColors.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.add,
                            color: CustomTheme.neutralColors.shade500,
                          ),
                        ))
                  ],
                ),
                CupertinoButton(
                    minSize: 0,
                    padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    child: Text(S.of(context).action_add_photo),
                    onPressed: () async {
                      FilePickerResult? result = await FilePicker.platform
                          .pickFiles(type: FileType.image);
                      if (result != null && result.files.single.path != null) {
                        final profilePic = await uploadFile(
                            result.files.single.path!, UploadMedia.profile);
                        setState(() {
                          profilePicture = profilePic;
                        });
                      }
                    }),
                const SizedBox(height: 12),
                Text(S.of(context).register_upload_documents_title,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(
                  S.of(context).register_upload_documents_subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 16),
                Row(children: [
                  ElevatedButton(
                      onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform
                            .pickFiles(type: FileType.image);

                        if (result != null &&
                            result.files.single.path != null) {
                          final file = await uploadFile(
                              result.files.single.path!, UploadMedia.document);
                          setState(() {
                            documents = documents.followedBy([file]).toList();
                          });
                        }
                      },
                      child: SizedBox(
                        width: 75,
                        height: 75,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Ionicons.cloud_upload),
                              const SizedBox(height: 4),
                              Text(
                                S.of(context).action_upload_document,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: documents.asMap().entries.map((entry) {
                          final index = entry.key;
                          final document = entry.value;
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () => {},
                                child: Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      serverUrl + document.address,
                                      width: 105,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 0,
                                right: 0,

                                child: Mutation$DeleteMedia$Widget(
                                options: WidgetOptions$Mutation$DeleteMedia(
                                onCompleted: (p0, p1) {
                                document.id;

                                },
                                onError: (error) =>
                                showOperationErrorMessage(context, error),
                                ),
                                builder: (runMutation, result) {
                                  return IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () => runMutation()
                                  );
                                }),
                                /*IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () => deleteDocument(index),
                                ),*/
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  )

                ]),
              ],
            ),
          ),
        ),
        Mutation$SetDocumentsOnDriver$Widget(
            options: WidgetOptions$Mutation$SetDocumentsOnDriver(
              onCompleted: (result, parsedData) {
                widget.onLoadingStateUpdated(false);
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(demoMode
                          ? S.of(context).title_important
                          : S.of(context).title_success),
                      content: Text(demoMode
                          ? S
                          .of(context)
                          .driver_registration_approved_demo_mode
                          : S
                          .of(context)
                          .driver_register_profile_submitted_message),
                      actions: [
                        TextButton(
                          onPressed: () {
                            int count = 0;
                            Navigator.popUntil(context, (route) {
                              return count++ == 2;
                            });
                          },
                          child: Text(S.of(context).action_ok),
                        )
                      ],
                    ));
              },
              onError: (error) => showOperationErrorMessage(context, error),
            ),
            builder: (runMutation, result) {
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                      WidgetStatePropertyAll<Color>(Color(0xFF3CD7AC)),
                    ),
                    onPressed: () {
                      widget.onLoadingStateUpdated(true);
                      runMutation(Variables$Mutation$SetDocumentsOnDriver(
                          driverId: widget.driverId,
                          relationIds: documents.map((e) => e.id).toList()));
                    },
                    child: Text(
                        S.of(context).action_confirm_and_continue )),
              );
            })
      ],
    );
  }

  Future<Fragment$DriverMedia> uploadFile(
      String path, UploadMedia media) async {
    print('entre en el metodo');
    print(path);
    print(media);
    var postUri = Uri.parse(
        "$serverUrl${media == UploadMedia.profile ? "api/driver/upload_profile" : "api/driver/upload_document"}");
    print(postUri);
    var request = http.MultipartRequest("POST", postUri);
    request.headers['Authorization'] =
    'Bearer ${Hive.box('user').get('jwt').toString()}';
    request.files.add(await http.MultipartFile.fromPath('file', path));
    final streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    var json = jsonDecode(response.body);
    print('ESPERANDO LA IMAGEN');
    print(json);
    widget.onUploaded();
    return Fragment$DriverMedia.fromJson(json);
  }
}

enum UploadMedia { profile, document }
