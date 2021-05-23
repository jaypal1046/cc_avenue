import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CcAvenue {
  static const MethodChannel _channel = const MethodChannel('cc_avenue');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> cCAvenueInit({
    String transUrl,
    String rsaKeyUrl,
    String accessCode,
    String merchantId,
    String orderId,
    String currencyType,
    String amount,
    String cancelUrl,
    String redirectUrl,
  }) async {
    await _channel.invokeMethod('CC_Avenue', {
      'transUrl': transUrl ?? '',
      'rsaKeyUrl': rsaKeyUrl ?? '',
      'accessCode': accessCode ?? '',
      'merchantId': merchantId ?? '',
      'orderId': orderId ?? '',
      'currencyType': currencyType ?? '',
      'amount': amount ?? '',
      'cancelUrl': cancelUrl ?? '',
      'redirectUrl': redirectUrl ?? ''
    });
  }
}
///access code AVGC07ID06BB49CGBB
///MID 374583
///ORderID 10
///Currency INR
///Amount 1
///redirect url
///cancel url
///rsa url https://secure.ccavenue.com/transaction/jsp/GetRSA.jsp
///