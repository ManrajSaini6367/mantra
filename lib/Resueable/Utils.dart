import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// customtext
customtext(String text, Color color, double fontSize, FontWeight fontWeight,
    FontStyle fontStyle) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle),
  );
}

// custombutton
custombutton(Function() onPressed, Color color, double height, double minWidth,
    Widget child, BorderRadius BorderRadius) {
  return MaterialButton(
    onPressed: onPressed,
    color: color,
    height: height,
    minWidth: minWidth,
    child: child,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius,
    ),
  );
}

// customcontainer
customcontainer(double height, double width, Color color, BoxShape shape) {
  return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, shape: shape));
}

// customtextformfield
customtextformfield(
    TextInputType keyboardType,
    String hntTxt,
    String labelText,
    String prefixText,
    Function() ontap1,
    int maxLength,
    bool obscureText,
    TextEditingController controller,
    String? Function(String?)? validator) {
  return TextFormField(
    keyboardType: keyboardType,
    validator: validator,
    obscureText: obscureText,
    controller: controller,
    maxLength: maxLength,
    decoration: InputDecoration(
        hintText: hntTxt,
        labelText: labelText,
        prefixText: prefixText,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(10)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.amber),
          borderRadius: BorderRadius.circular(10),
        )),
  );
}

// customAppbar
customAppbar() {
  return AppBar(
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
  );
}

customotp(int numberOfFields, Color borderColor, Function(String) onSubmit) {
  return OtpTextField(
    numberOfFields: numberOfFields,
    showFieldAsBox: true,
    fieldWidth: 45,
    borderRadius: BorderRadius.circular(10),
    borderColor: borderColor,
    onSubmit: onSubmit,
  );
}

customIconButton(Widget icon, Function() onPressed) {
  return IconButton(
    icon: icon,
    onPressed: onPressed,
  );
}

// customBottomItem
customBottomItem(Widget icon, String label) {
  return BottomNavigationBarItem(icon: icon, label: label);
}

// customDropdownButton
customDropdownButton(Object value, List<DropdownMenuItem<Object>> items,
    Function(Object?) onChanged) {
  return DropdownButton(value: value, items: items, onChanged: onChanged);
}
