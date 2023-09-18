import 'package:flutter/material.dart';
import 'package:skeleton_app/core/widgets/spacers.dart';

import '../../config/theme.dart';

class LanguageDropDown extends StatefulWidget {
  const LanguageDropDown({super.key});

  @override
  State<LanguageDropDown> createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  final _tooltipController = OverlayPortalController();
  final _link = LayerLink();

  late LanguageModel selectedLanguage;

  @override
  void initState() {
    super.initState();

    selectedLanguage = const LanguageModel(
      name: 'English',
      image: 'assets/images/logo.png',
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _link,
      child: OverlayPortal(
        controller: _tooltipController,
        overlayChildBuilder: (BuildContext context) {
          return CompositedTransformFollower(
            link: _link,
            targetAnchor: Alignment.bottomLeft,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: MenuWidget(
                onValueChanged: (selectedLanguage) {
                  this.selectedLanguage = selectedLanguage;
                  _tooltipController.toggle();
                  setState(() {});
                },
              ),
            ),
          );
        },
        child: InkWell(
          onTap: onTap,
          child: ButtonWidget(languageModel: selectedLanguage),
        ),
      ),
    );
  }

  void onTap() {
    _tooltipController.toggle();
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.languageModel,
    this.height = 36,
    this.width,
    this.onTap,
    this.child,
  });

  final LanguageModel languageModel;
  final double? height;
  final double? width;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      height: height,
      width: 150,
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: const BorderSide(color: Colors.black12),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Row(
            children: [
              hSpace(16),
              ClipOval(
                child: Image.asset(
                  languageModel.image,
                  width: 24,
                  height: 24,
                ),
              ),
              hSpace(),
              Text(languageModel.name),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuWidget extends StatefulWidget {
  final void Function(LanguageModel selectedLanguage) onValueChanged;

  const MenuWidget({
    super.key,
    this.width,
    required this.onValueChanged,
  });

  final double? width;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  final languages = [
    const LanguageModel(name: 'English', image: 'assets/images/logo.png'),
    const LanguageModel(name: 'Chinese', image: 'assets/images/logo.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 150,
      height: 70,
      decoration: ShapeDecoration(
        color: context.theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: context.theme.colorScheme.onPrimary,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 32,
            offset: Offset(0, 20),
            spreadRadius: -8,
          ),
        ],
      ),
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 8.0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final languageModel = languages[index];
            return InkWell(
              onTap: () {
                widget.onValueChanged(languageModel);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    hSpace(16),
                    ClipOval(
                      child: Image.asset(
                        languageModel.image,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    hSpace(),
                    Text(languageModel.name),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class LanguageModel {
  final String image;
  final String name;

  const LanguageModel({required this.image, required this.name});
}
