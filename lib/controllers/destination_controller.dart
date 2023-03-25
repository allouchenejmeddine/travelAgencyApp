import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationController extends GetxController{
  Rx<List<DestinationModel>> destinations = Rx<List<DestinationModel>>([]);
  final isLoading = false.obs;
  final box = GetStorage();
  @override
  void onInit() {
    getAllDestinations();
    super.onInit();
  }
  Future getAllDestinations() async {
    try{

    }catch(e){

    }
  }
}