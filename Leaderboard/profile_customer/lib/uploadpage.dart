import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UploadPage(),
    );
  }
}

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final ImagePicker imagePicker = ImagePicker();
  XFile? photo;
  List<XFile> additionalPhotos = [];

  final _formKey = GlobalKey<FormState>();
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productQualityController =
      TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController harvestDateController = TextEditingController();
  final TextEditingController shelfLifeController = TextEditingController();

  Future<void> pickImage() async {
    photo = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  Future<void> pickMultipleImages() async {
    final List<XFile>? pickedImages = await imagePicker.pickMultiImage();
    if (pickedImages != null) {
      setState(() {
        additionalPhotos.addAll(pickedImages);
      });
    }
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        controller.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Product Name: ${productNameController.text}');
      print('Product Quality: ${productQualityController.text}');
      print('Product Description: ${productDescriptionController.text}');
      print('Quantity: ${quantityController.text}');
      print('Price per Unit: ${priceController.text}');
      print('Harvest Date: ${harvestDateController.text}');
      print('Expected Shelf Life: ${shelfLifeController.text}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Product uploaded Successfully",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.lightGreenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Upload Your Product',
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [
                      Colors.white,
                      Colors.yellow,
                      Colors.lightGreenAccent,
                      Colors.green,
                    ],
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      GestureDetector(
                        onTap: pickImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey[50],
                          radius: 50,
                          backgroundImage: photo != null
                              ? FileImage(File(photo!.path))
                              : null,
                          child: photo == null
                              ? const Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                  size: 30,
                                )
                              : null,
                        ),
                      ),
                      Positioned(
                        right: 4,
                        bottom: 4,
                        child: GestureDetector(
                          onTap: pickImage,
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.blue,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _buildCardInputField("Product Name", productNameController),
                const SizedBox(height: 10),
                _buildCardInputField(
                    "Product Variety", productQualityController),
                const SizedBox(height: 10),
                _buildCardInputField(
                    "Product Description", productDescriptionController),
                const SizedBox(height: 10),
                _buildCardInputField(
                    "Quantity Available(/kg/gram/unit)", quantityController,
                    isNumeric: true),
                const SizedBox(height: 10),
                _buildCardInputField(
                    "Price per unit (kg/gram/units)", priceController,
                    isNumeric: true),
                const SizedBox(height: 10),
                _buildCardDateField("Harvest Date", harvestDateController),
                const SizedBox(height: 10),
                _buildCardDateField("Expected Shelf Life", shelfLifeController),
                const SizedBox(height: 20),

                // Multi-image picker
                const Text(
                  "Additional Images",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: pickMultipleImages,
                  icon: const Icon(Icons.photo_library),
                  label: const Text("Pick Multiple Images"),
                ),
                const SizedBox(height: 10),

                // Display additional images
                additionalPhotos.isNotEmpty
                    ? GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: additionalPhotos.length,
                        itemBuilder: (context, index) {
                          return Image.file(
                            File(additionalPhotos[index].path),
                            fit: BoxFit.cover,
                          );
                        },
                      )
                    : const Text("No additional images selected."),

                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardInputField(String label, TextEditingController controller,
      {bool isNumeric = false}) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: controller,
              keyboardType:
                  isNumeric ? TextInputType.number : TextInputType.text,
              cursorColor: Colors.green,
              decoration: const InputDecoration(border: InputBorder.none),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter $label';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardDateField(String label, TextEditingController controller) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () => _selectDate(context, controller),
              child: AbsorbPointer(
                child: TextFormField(
                  controller: controller,
                  cursorColor: Colors.green,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.calendar_today, color: Colors.green),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select $label';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    productNameController.dispose();
    productQualityController.dispose();
    productDescriptionController.dispose();
    quantityController.dispose();
    priceController.dispose();
    harvestDateController.dispose();
    shelfLifeController.dispose();
    super.dispose();
  }
}