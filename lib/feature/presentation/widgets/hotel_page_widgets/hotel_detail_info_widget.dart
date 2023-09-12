import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/icons/app_icons.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';
import 'package:hotel_test_app/core/utils/hotel_feature.dart';

import '../../../../common/widgets/tag_list_widget.dart';
import '../../../domain/entities/about_hotel_entity.dart';

class HotelDetailInfoWidget extends StatelessWidget {
  const HotelDetailInfoWidget({
    super.key,
    required AboutHotelEntity hotel,
    required List<HotelFeature> features,
  })  : _features = features,
        _aboutHotel = hotel;

  final AboutHotelEntity _aboutHotel;
  final List<HotelFeature> _features;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        _aboutWidget(context),
        const SizedBox(height: 16.0),
        // _peculiaritiesWidget(),
        tagListWidget(
          dataList: _aboutHotel.peculiarities,
          color: Colors.grey.shade600,
        ),
        const SizedBox(height: 12.0),
        _descriptionWidget(context),
        const SizedBox(height: 16.0),
        _featuresWidget(context),
      ],
    );
  }

  Widget _aboutWidget(BuildContext context) => Text(
        Constants.ABOUT_HOTEL_TITLE,
        style: Theme.of(context).textTheme.titleLarge,
      );

  Widget _descriptionWidget(BuildContext context) => Text(
        _aboutHotel.description,
        style: Theme.of(context).textTheme.bodyMedium,
      );

  Widget _featuresWidget(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(251, 251, 252, 1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: _features.length,
          physics: const ScrollPhysics(),
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Divider(),
          ),
          itemBuilder: (context, index) =>
              _featuresElementWidget(context, _features[index]),
        ),
      );

  Widget _featuresElementWidget(
    BuildContext context,
    HotelFeature feature,
  ) =>
      ListTile(
        leading: SizedBox(
          height: 30.0,
          width: 30.0,
          child: feature.icon,
        ),
        title: Text(
          feature.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          Constants.MOST_IMPORTANT,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
        horizontalTitleGap: 20.0,
      );
}
