import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            title: 'Documents Total',
            svgSrc: 'assets/icons/Documents.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 329,
          ),
          StorageInfoCard(
            title: 'Media Total',
            svgSrc: 'assets/icons/media.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1723,
          ),
          StorageInfoCard(
            title: 'Other Files',
            svgSrc: 'assets/icons/folder.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 4718,
          ),
          StorageInfoCard(
            title: 'Unknown',
            svgSrc: 'assets/icons/unknown.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 245,
          ),
        ],
      ),
    );
  }
}
