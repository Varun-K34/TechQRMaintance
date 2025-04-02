import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/application/docuploadbloc/doc_upload_bloc.dart';
import 'package:techqrmaintance/application/pdf_upload_bloc/pdf_upload_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'dart:io';

import 'package:techqrmaintance/domain/docuploadmodel/doc_upload_model/docdata.dart';

class UploadPdfScreen extends StatelessWidget {
  final TextEditingController orgIdController = TextEditingController();
  final TextEditingController deviceIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
   

  UploadPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    File? selectedFile;
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        title: Text(
          'Upload Document',
          style: TextStyle(
            color: primaryBlue,
          ),
        ),
        backgroundColor: primaryWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'Organization ID',
              controller: orgIdController,
              curveRadius: 10,
              boolVal: false,
            ),
            SizedBox(height: 15),
            CustomTextField(
              hintText: 'Device ID',
              controller: deviceIdController,
              curveRadius: 10,
              boolVal: false,
            ),
            SizedBox(height: 15),
            CustomTextField(
              hintText: 'File Name',
              controller: nameController,
              curveRadius: 10,
              boolVal: false,
            ),
            SizedBox(height: 15),
            Center(
              child: BlocConsumer<DocUploadBloc, DocUploadState>(
                listener: (context, state) {
                   if (state.pdfFile != null) {
                    selectedFile = state.pdfFile;
                    CustomSnackbar.shows(
                      context,
                      message: 'PDF created successfully',
                    );
                  }
                  if (state.isFailure) {
                    CustomSnackbar.shows(
                      context,
                      message: state.errorMessage ?? 'PDF created failed',
                    );
                  }

                },
                builder: (context, state) {
                  return Column(
                    children: [
                       state.pdfFile != null
                          ? Text(
                              'PDF Ready: ${state.lastSavedPath}',
                              style: TextStyle(color: primaryBlue),
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 10),

                      CustomMaterialButton(
                        text: state.isLoading
                                  ? 'CREATING...'
                                  : 'CREATE DOCUMENTS',

                        onPressed: () => createfile(context,),
                        buttonColor: primaryBlack,
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: CustomMaterialButton(
                text: 'Upload File',
                onPressed: () => uploadFile(context,selectedFile),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void createfile(BuildContext ctx) {
    ctx.read<DocUploadBloc>().add(DocUploadEvent.uploadDoc());
  }

  void uploadFile(BuildContext context ,File? selectedFile) {
    final orgId = orgIdController.text.trim();
    final deviceId = deviceIdController.text.trim();
    final fileName = nameController.text.trim();
    if (selectedFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No file selected')),
      );
      return;
    }

    if (orgId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Organization ID is required')),
      );
      return;
    }

    if (deviceId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Device ID is required')),
      );
      return;
    }

    final datamodel = DocData.create(
      orgId: orgId,
      file: selectedFile,
      deviceId: deviceId,
      name: fileName,
    );
    context
        .read<PdfUploadBloc>()
        .add(PdfUploadEvent.pdfUpload(model: datamodel));
    // Proceed with file upload logic here
  }
}
