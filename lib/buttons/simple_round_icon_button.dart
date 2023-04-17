import 'package:flutter/material.dart';

class SimpleRoundIconButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Icon icon;
  final Color? iconColor;
  final Alignment iconAlignment;
  final Function()? onPressed;

  const SimpleRoundIconButton(
      {this.backgroundColor = Colors.redAccent,
        this.buttonText = const Text("REQUIRED TEXT"),
        this.icon = const Icon(Icons.email),
        this.iconColor,
        this.iconAlignment = Alignment.centerLeft,
        this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  overlayColor: MaterialStateProperty.all(backgroundColor),
                  backgroundColor: MaterialStateProperty.all(backgroundColor),
                ),
                onPressed: onPressed ?? () {},
                child: Row(
                  children: <Widget>[
                    if (iconAlignment == Alignment.centerLeft)
                      Transform.translate(
                        offset: Offset(-10.0, 0.0),
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0))),
                              overlayColor: MaterialStateProperty.all(Colors.white),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () => {},
                            child: Icon(
                              icon.icon,
                              color: iconColor == null
                                  ? backgroundColor
                                  : iconColor,
                            ),
                          ),
                        ),
                      ),
                    if (iconAlignment == Alignment.centerLeft) Container(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
                      child: buttonText,
                    ),
                    if (iconAlignment == Alignment.centerRight)
                      Container(),
                    if (iconAlignment == Alignment.centerRight)
                      Transform.translate(
                        offset: Offset(10.0, 0.0),
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(28.0))),
                              overlayColor: MaterialStateProperty.all(Colors.white),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () => {},
                            child: Icon(
                              icon.icon,
                              color: iconColor == null
                                  ? backgroundColor
                                  : iconColor,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}