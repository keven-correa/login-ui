import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          const _HeaderContainer(),
          const HeaderIcon(),
          child,
        ],
      ),
    );
  }
}

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(
          Icons.login_sharp,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class _HeaderContainer extends StatelessWidget {
  const _HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        height: size.height * 0.4,
        decoration: _headerDecoration(),
      ),
    );
  }

  BoxDecoration _headerDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xff006064),
          Color(0xff00838f),
          Color(0xff0097a7),
          Color(0xff00acc1),
        ],
      ),
    );
  }
}
