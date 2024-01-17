import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddPeminjamanView'),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              // controller: controller.,
              decoration: InputDecoration(
                hintText: "Masukan tanggal pinjam",
              ),
              validator: (value){
                if (value!.isEmpty){
                  return "Tidak Boleh Kosong";
                }
                return null;
              },
            ),
            TextFormField(
              // controller: controller.,
              decoration: InputDecoration(
                hintText: "Masukan tanggal pinjam",
              ),
              validator: (value){
                if (value!.isEmpty){
                  return "Tidak Boleh Kosong";
                }
                return null;
              },
            ),
            Obx((){
              return controller.loading.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(onPressed: ()=> Get.toNamed(Routes.ADD_PEMINJAMAN), child: Text("Simpan"));
            }),paddingOnly(top: 16)
          ],
        ),
      ),
    );
  }
}