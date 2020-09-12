import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: must_be_immutable
class SignInButton extends StatelessWidget {
  //required
  /// [buttonType] sets the style and icons of the button.
  final ButtonType buttonType;

  //required
  /// [onPressed] Send a function to trigger the button.
  final Function onPressed;

  //not required, default left
  /// [imagePosition] set the position of the icon.(left or right)
  final ImagePosition imagePosition;

  //not required, default 5.0
  /// [elevation] set the button's elevation value.
  final double elevation;

  //not required, default small
  /// [buttonSize] set the size of the button. (small medium large)
  final ButtonSize buttonSize;

  //not required, Gets value according to buttonType.
  /// [btnColor] Set the background color of the button.
  Color btnColor;

  //not required, Gets value according to buttonType.
  /// [btnTextColor] set the button's text color.
  Color btnTextColor;

  //not required, Gets value according to buttonType.
  /// [btnText] set the button's text.
  String btnText;

  //not required, Gets value according to buttonSize.
  /// You can change the value of [width] when the text size becomes too small.
  double width;

  //not required, Gets value according to buttonSize.
  /// [padding] set the button's padding value.
  double padding;

  /// [_image] value cannot be assigned.Gets value according to [buttonType].
  Widget _image;

  /// [_fontSize] value cannot be assigned.Gets value according to [buttonSize].
  double _fontSize;

  /// [_imageSize] value cannot be assigned.Gets value according to [buttonSize].
  double _imageSize;

  SignInButton(
      {@required this.buttonType,
      @required this.onPressed,
      this.imagePosition: ImagePosition.left,
      this.buttonSize: ButtonSize.small,
      this.btnColor,
      this.btnTextColor,
      this.btnText,
      this.elevation: 5.0,
      this.width,
      this.padding})
      : assert(onPressed != null, 'onPressed is null!'),
        assert(buttonType != null, 'buttonType is null');

  @override
  Widget build(BuildContext context) {
    _setButtonSize();
    _createStyle();
    return MaterialButton(
      color: btnColor,
      shape: StadiumBorder(),
      onPressed: onPressed,
      elevation: elevation,
      child: Container(
        width: width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: imagePosition == ImagePosition.left
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(padding),
              child: imagePosition == ImagePosition.left
                  ? _image
                  : Text(
                      btnText,
                      style: TextStyle(
                        fontSize: _fontSize,
                        color: btnTextColor,
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(padding),
              child: imagePosition == ImagePosition.left
                  ? Text(
                      btnText,
                      style: TextStyle(
                        fontSize: _fontSize,
                        color: btnTextColor,
                      ),
                    )
                  : _image,
            ),
          ],
        ),
      ),
    );
  }

  void _setButtonSize() {
    if (buttonSize == ButtonSize.small) {
      padding ??= 5.0;
      width ??= 200;
      _fontSize = 15.0;
      _imageSize = 24.0;
    } else if (buttonSize == ButtonSize.medium) {
      padding ??= 5.5;
      width ??= 220;
      _fontSize = 17.0;
      _imageSize = 28.0;
    } else {
      padding ??= 6.0;
      width ??= 250;
      _fontSize = 19.0;
      _imageSize = 32.0;
    }
  }

  void _createStyle() {
    switch (buttonType) {
      case ButtonType.facebook:
        btnText ??= 'Sign in with Facebook';
        btnTextColor ??= Colors.white;
        btnColor ??= Colors.blueAccent;
        _image = Image.asset(
          'images/facebook.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.github:
        btnText ??= 'Sign in with Github';
        btnTextColor ??= Colors.white;
        btnColor ??= Color(0xee393e46);
        _image = Image.asset(
          'images/github.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.pinterest:
        btnText ??= 'Sign in with Pinterest';
        btnTextColor ??= Colors.white;
        btnColor ??= Colors.redAccent;
        _image = Image.asset(
          'images/pinterest.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.apple:
        btnText ??= 'Sign in with Apple';
        btnTextColor ??= Colors.black;
        btnColor ??= Color(0xfff7f7f7);
        _image = Image.asset(
          'images/apple.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.twitter:
        btnText ??= 'Sign in with Twitter';
        btnTextColor ??= Colors.white;
        btnColor ??= Colors.lightBlueAccent;
        _image = Image.asset(
          'images/twitter.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.linkedin:
        btnText ??= 'Sign in with LinkedIn';
        btnTextColor ??= Colors.white;
        btnColor ??= Color(0xff3282b8);
        _image = Image.asset(
          'images/linkedin.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.google:
        btnText ??= 'Sign in with Google';
        btnTextColor ??= Colors.black;
        btnColor ??= Color(0xfff7f7f7);
        _image = Image.asset(
          'images/google.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.youtube:
        btnText ??= 'Sign in with Youtube';
        btnTextColor ??= Colors.white;
        btnColor ??= Color(0xded63447);
        _image = Image.asset(
          'images/youtube.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.microsoft:
        btnText ??= 'Sign in with Microsoft';
        btnTextColor ??= Colors.white;
        btnColor ??= Color(0xff424874);
        _image = Image.asset(
          'images/microsoft.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
        break;

      case ButtonType.tumblr:
        btnText ??= 'Sign in with Tumblr';
        btnTextColor ??= Colors.white;
        btnColor ??= Color(0xff0f4c75);
        _image = Image.asset(
          'images/tumblr.png',
          package: 'sign_button',
          width: _imageSize,
          height: _imageSize,
        );
    }
  }
}
