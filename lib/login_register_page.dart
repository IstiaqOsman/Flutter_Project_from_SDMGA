// import 'dart:core';
// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart' show DragStartBehavior;
//
// Widget login_register_page(){
//   String img = "assets/beauty.jpeg";
//   return SingleChildScrollView(
//     child: Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.only(top: 60),
//       color: Colors.white,
//       child: Column(
//         children: <Widget>[
//
//         ],
//       ),
//     ),
//   );
// }
// class TextFormFieldDemo extends StatefulWidget{
//   const TextFormFieldDemo({Key key}): super(key:key);
//
//   @override
//   TextFromFieldDemoState createState() => TextFormFieldDemoState();
// }
// class PersonData{
//   String name = "";
//   String PhoneNumber = "";
//   String email = "";
//   String password = "";
// }
// class PasswordField extends StatefulWidget {
//   const PasswordField({
//     Key key,
//     this.restorationId,
//     this.fieldKey,
//     this.hintText,
//     this.labelText,
//     this.helperText,
//     this.onSaved,
//     this.validator,
//     this.onFieldSubmitted,
//     this.focusNode,
//     this.textInputAction,
//   }) : super(key: key);
//
//   final String restorationId;
//   final Key fieldKey;
//   final String hintText;
//   final String labelText;
//   final String helperText;
//   final FormFieldSetter<String> onSaved;
//   final FormFieldValidator<String> validator;
//   final ValueChanged<String> onFieldSubmitted;
//   final FocusNode focusNode;
//   final TextInputAction textInputAction;
//
//   @override
//   _PasswordFieldState createState() => _PasswordFieldState();
// }
// class _PasswordFieldState extends State<PasswordField> with RestorationMixin{
//     final RestorableBool _obscureText = RestorableBool(true);
//
//     @override
//     String get restoraionId => widget.restorationId;
//
//     @override
//     void restoreState(RestorationBucket oldBucket, bool initialRestore){
//       registerForRestoration(_obscureText, 'obscure_text');
//     }
//
//     @override
//     Widget build(BuildContext context){
//       return TextFormField(
//         key: widget.fieldKey,
//         restoraionId: 'password_text_field',
//         obscureText: _obscureText.value,
//         maxLength: 8,
//         onSaved: widget.validator,
//         validator: widget.validator,
//         onFieldSubmitted: widget.onFieldSubmitted,
//         decoration: InputDecoration(
//           filled: true,
//           hintText: widget.hintText,
//           labelText: widget.labelText,
//             helperText: widget.helperText,
//             suffixIcon: GestureDetector(
//               dragStartBehavior: DragStartBehavior.down,
//                 onTap: (){
//                 setState(() {
//                   _obscureText.value = !_obscureText.value;
//                 });
//                 },
//               child: Icon(
//                 _obscureText.value ? Icons.visibility: Icons.visibility_off,
//                 semanticLabel: _obscureText.value ? GalleryLocalizations.of(context).demoTextFieldShowPasswordLabel:GalleryLocalizations.of(context).demoTextFieldHidePasswordLabel,
//               ),
//             ),
//         ),
//       );
//     }
// }
// class TextFormFieldDemoState extends State<TextFormFieldDemo> with RestorationMixin{
//   PersonData person = PersonData();
//   FocusNode _phoneNumber, _email, _lifeStory, _password, _retypePassword;
//
//   @override
//   void initState(){
//     super.initState();
//     _phoneNumber = FocusNode();
//     _email = FocusNode();
//     _lifeStory = FocusNode();
//     _password = FocusNode();
//     _retypePassword = FocusNode();
//   }
//   @override
//   void dispose(){
//     _phoneNumber.dispose();
//     _email.dispose();
//     _lifeStory.dispose();
//     _password.dispose();
//     _retypePassword.dispose();
//     super.dispose();
//   }
//
//   void showInSnackBar(String value){
//     ScaffoldMessenger.of(context).hideCurrentSnackBar();
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
//   }
//   @override
//   String get restorationId => 'text_field_demo';
//
//   @override
//   void restoreState(RestorationBucket oldBucket, bool initialRestore){
//     registerForRestoration(_autoValidateModeIndex, 'autovalidate_mode');
//   }
//   final RestorableInt _autoValidateModeIndex = RestorableInt(AutovalidateMode.disabled.index);
//
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final GlobalKey<FormFieldState<String>> _passwordFieldKey = GlobalKey<FormFieldState<String>>();
//   final _UsNumberTextInputFormatter _phoneNumberFormatter = _UsNumberTextInputFormatter();
//
//   void _handleSubmitted(){
//     final form = _formKey.currentState;
//     if(!form.validate()) {
//       _autoValidateModeIndex.value = AutovalidateMode.always.index;
//       showInSnackBar(
//         GalleryLocalizations.of(context).demoTextFieldFormErrors,
//       );
//     }else{
//       form.save();
//       showInSnackBar(GalleryLocalizations.of(context).demoTextFieldNameHasPhoneNumber(person.name, person.phoneNumber));
//     }
//   }
//   String _validateName(String value){
//     if(value.isEmpty){
//       return GalleryLocalizations.of(context).demoTextFieldNameRequired;
//     }
//     final nameExp = RegExp(r'^[A-Za-z ]+$');
//     if(!nameExp.hasMatch(value)){
//       return GalleryLocalizations.of(context).demoTextFieldOnlyAlphabeticalChars;
//     }
//     return null;
//   }
//   String _validatePhoneNumber(String value){
//     final phoneExp = RegExp(r'^\(\d\d\d\) \d\d\d\-\d\d\d\d$');
//
//     if(!phoneExp.hasMatch(value)){
//       return GalleryLocalizations.of(context).demoTextFieldEnterUSPhoneNumber;
//     }
//     return null;
//   }
//   String _validatePassword(String value){
//     final passwordField = _passwordFieldKey.currentState;
//     if(passwordField.value == null || passwordField.value.isEmpty){
//       return GalleryLocalizations.of(context).demoTextFieldEnterPassword;
//     }
//     if(password.value != value){
//       return GalleryLocalizations.of(context).demoTextFieldPasswordsDoNotMatch;
//     }
//     return null;
//   }
//   @override
//   Widget build(BuildContext context)
//
// }