import 'package:flutter/material.dart';
import 'package:testverygood/feature/scanbill/components/btn_choose_AI.dart';
import 'package:testverygood/feature/scanbill/components/btnchoose.dart';
import 'package:testverygood/feature/transactrion/app.dart';

class ImagePickerOptions extends StatefulWidget {
  const ImagePickerOptions({
    Key? key,
    required this.onPickImage,
    required this.onPickCam,
    required this.onModelSelected,
    this.showWarning = false,
  }) : super(key: key);
  final VoidCallback onPickImage;
  final VoidCallback onPickCam;
  final bool showWarning;
  final Function(String) onModelSelected;

  @override
  _ImagePickerOptionsState createState() => _ImagePickerOptionsState();
}

class _ImagePickerOptionsState extends State<ImagePickerOptions> {
  void _updateSelectedModel(String model) {
    setState(() {});
    widget.onModelSelected(model);
  }

  void navigateToTargetPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      // ignore: inference_failure_on_instance_creation
      MaterialPageRoute(builder: (context) => const TransactionMain()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        padding: EdgeInsets.zero,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.showWarning) ...[
                const Text(
                  'Please select or take photos again !',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Lato',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Your photo is not in the correct format',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lato',
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 12),
              ],
              BtnChooseAi(
                iconPath: 'lib/assets/icon/OCR_icon/nest_ai.svg',
                onModelSelected:
                    _updateSelectedModel, // Gửi giá trị đến ImagePickerOptions
              ),
              CustomButton(
                text: 'Choose from gallery',
                iconPath: 'lib/assets/icon/OCR_icon/addpic.svg',
                onPressed: widget.onPickImage,
              ),
              CustomButton(
                text: 'Take a picture',
                iconPath: 'lib/assets/icon/OCR_icon/addcam.svg',
                onPressed: widget.onPickCam,
              ),
              CustomButton(
                text: 'Add Manually',
                iconPath: 'lib/assets/icon/add_icon/add_icon.svg',
                onPressed: () => navigateToTargetPage(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
