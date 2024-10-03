import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/utils/colors.dart';

class CustomTextFieldWidget extends StatefulWidget {
  CustomTextFieldWidget({
    Key? key,
    this.initialValue,
    this.label,
    this.hintText,
    this.prefix,
    this.suffix,
    this.suffixAction,
    this.controller,
    this.inputType,
    this.textCapitalization,
    this.validator,
    this.obscureText = false,
    this.isEnabled = true,
    this.color = const Color(0xFF3E4A59),
    this.onChanged,
    this.fontSize,
    this.centerText = false,
    this.readOnly = false,
    this.errorMessage,
    this.onSubmitted,
    this.filled = false,
    this.fillColor,
    this.inputFormatters,
    this.hintStyle,
    this.textStyle,
    this.labelTextStyle,
    this.contentPadding,
    this.onTap,
    this.border,
    this.maxLength,
    this.textInputAction,
    this.focusNode,
    this.showBeneficiary = false,
    this.keyboardType,
    this.type = '',
    this.showContact = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.maxLines,
    this.minLines,
  }) : super(key: key);

  final String? initialValue;
  final String? label;
  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;
  final VoidCallback? suffixAction;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final TextCapitalization? textCapitalization;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;
  final InputBorder? border;
  final FocusNode? focusNode;
  final AutovalidateMode autovalidateMode;
  final bool obscureText;
  final bool? isEnabled;
  final int? maxLength;
  final Color color;
  final String type;
  final double? fontSize;
  final Color? fillColor;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool centerText;
  final bool readOnly;
  final String? errorMessage;
  final bool? filled;
  final TextStyle? textStyle;
  final TextStyle? labelTextStyle;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final bool showContact;
  final bool showBeneficiary;

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: widget.centerText
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        widget.label == null
            ? Container()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.label ?? '',
                    style: widget.labelTextStyle ??
                        textTheme.bodySmall?.copyWith(
                          fontSize: widget.fontSize ?? 14.sp,
                          fontWeight: FontWeight.w500,
                          color: appColor.grey,
                        ),
                  ),
                  widget.showContact || widget.showBeneficiary
                      ? const SizedBox.shrink()
                      : const Center(),
                ],
              ),
        SizedBox(
          height: size.height * 0.01,
        ),
        GestureDetector(
          onTap: () {
            if (widget.onTap != null) {
              widget.onTap!();
            }
          },
          child: TextFormField(
            enableSuggestions: false,
            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            cursorColor: Theme.of(context).primaryColor,
            cursorHeight: 20.0.h,
            readOnly: widget.readOnly,
            controller: widget.controller,
            autocorrect: true,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.sentences,
            initialValue: widget.initialValue,
            obscureText: widget.obscureText,
            validator: widget.validator,
            onFieldSubmitted: widget.onSubmitted,
            onChanged: (value) {
              widget.onChanged?.call(value);
            },
            maxLength: widget.maxLength,
            maxLines: widget.maxLines ?? 1,
            minLines: widget.minLines,
            style: widget.textStyle ??
                Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 15.sp),
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              errorText: widget.errorMessage,
              fillColor: widget.fillColor ?? const Color(0xFFF2F2F2),
              errorMaxLines:
                  Theme.of(context).inputDecorationTheme.errorMaxLines,
              filled: widget.filled,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              contentPadding: widget.contentPadding ??
                  Theme.of(context).inputDecorationTheme.contentPadding,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  Theme.of(context).inputDecorationTheme.hintStyle,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide:
                    Theme.of(context).inputDecorationTheme.focusedBorder != null
                        ? Theme.of(context)
                            .inputDecorationTheme
                            .focusedBorder!
                            .borderSide
                        : BorderSide(color: appColor.themeColor, width: 1.5),
              ),
              enabledBorder: widget.border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide:
                        Theme.of(context).inputDecorationTheme.enabledBorder !=
                                null
                            ? Theme.of(context)
                                .inputDecorationTheme
                                .enabledBorder!
                                .borderSide
                            : const BorderSide(color: Colors.grey, width: 1.5),
                  ),
              border: widget.border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide:
                        Theme.of(context).inputDecorationTheme.border != null
                            ? Theme.of(context)
                                .inputDecorationTheme
                                .border!
                                .borderSide
                            : BorderSide(color: Colors.grey, width: 1.5),
                  ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  left: 12.0.w,
                  right: 10.0.w,
                ),
                child: widget.prefix,
              ),
              prefixIconConstraints: BoxConstraints(
                maxHeight: 20.0.h,
              ),
              suffixIconConstraints: BoxConstraints(
                  maxHeight: 40.0.h, minWidth: 60.w, maxWidth: 100.w),
              suffixIcon: widget.suffix == null
                  ? null
                  : InkResponse(
                      onTap: widget.suffixAction,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12.0.w,
                          right: 15.0.w,
                        ),
                        child: widget.suffix,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
