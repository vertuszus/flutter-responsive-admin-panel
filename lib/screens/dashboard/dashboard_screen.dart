import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(
            defaultPadding
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Dashboard',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(
                    child: SearchField(),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: secondaryColor
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/profile_pic.png',
                        height: 38,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 0.5,
                        ),
                        child: Text(
                            'Linda Way'
                        ),
                      ),
                      Icon(
                          Icons.keyboard_arrow_down
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
              Radius.circular(10)
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(
                defaultPadding * 0.75
            ),
            margin: EdgeInsets.symmetric(
              horizontal: defaultPadding * 0.5,
            ),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10)
              ),
            ),
            child: SvgPicture.asset(
                'assets/icons/Search.svg'
            ),
          ),
        ),
      ),
    );
  }
}
