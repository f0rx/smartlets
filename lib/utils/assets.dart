import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartlets/utils/utils.dart';

mixin AppAssets {
  static const ASSETS_DIR = "assets";
  static const SVG_DIR = "$ASSETS_DIR/svgs";
  static const IMAGES_DIR = "$ASSETS_DIR/images";
  static const AUTH_SVG_DIR = "$SVG_DIR/auth";
  static const HOME_SVG_DIR = "$SVG_DIR/home";
  static const HOME_IMAGES_DIR = "$IMAGES_DIR/home";

  static SvgPicture mailTo = SvgPicture.asset(
    '$AUTH_SVG_DIR/mail_to.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture unlockPassword = SvgPicture.asset(
    '$AUTH_SVG_DIR/unlock_password.svg',
    height: App.height * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture emailSent = SvgPicture.asset(
    '$AUTH_SVG_DIR/letter.svg',
    height: App.height * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture upgrade = SvgPicture.asset(
    '$HOME_SVG_DIR/upgrade.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook = SvgPicture.asset(
    '$AUTH_SVG_DIR/facebook.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture lock = SvgPicture.asset(
    '$AUTH_SVG_DIR/lock.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );
}
