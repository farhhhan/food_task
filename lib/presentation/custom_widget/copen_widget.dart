import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CouponCodeWidget extends StatefulWidget {
  final String cuponCode;

  CouponCodeWidget({required this.cuponCode});

  @override
  _CouponCodeWidgetState createState() => _CouponCodeWidgetState();
}

class _CouponCodeWidgetState extends State<CouponCodeWidget> {
  bool _copied = false;

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.cuponCode));
    
    setState(() {
      _copied = true;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Coupon code copied to clipboard!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        duration: Duration(seconds: 2),
      ),
    );

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _copied = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _copyToClipboard,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.4,
            alignment: Alignment.center,
            child: Text(
              widget.cuponCode,
              style: TextStyle(
                color: Color.fromARGB(255, 249, 184, 4),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: _copied ? 1.0 : 0.0,
            duration: Duration(milliseconds: 300),
            child: Container(
              color: Colors.black.withOpacity(0.7),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                'Copied!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
