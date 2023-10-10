import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/constant.dart';
import 'details_image.dart';
import 'information_detials.dart';

class DetailsViewBody extends StatelessWidget {
   DetailsViewBody(
      {Key? key,
      required this.name,
      required this.price,
      required this.oldPrice,
      required this.description,
      required this.discount,  this.images,this.image, required this.id})
      : super(key: key);

  final String name;
  final dynamic price;
  final dynamic oldPrice;
  final String description;
  final dynamic discount;
  List <String>? images;
   String? image;
   final int id;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        return Column(
          children: [
            DetailsImage(
              images: images,
              image: image,
              id: id,
            ),
            InformationDetails(
              name: name,
              price: price,
              oldPrice: oldPrice,
              description: description,
              discount: discount,
              id: id,
            ),
          ],
        );
      },
    );
  }
}
