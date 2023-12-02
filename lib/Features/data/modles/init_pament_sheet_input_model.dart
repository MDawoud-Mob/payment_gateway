class InitpaymentSheetInputModel{
final String  clientSecret;
final String  customId;
final String  ephemeralKeySecret;

  InitpaymentSheetInputModel(
    {required this.clientSecret, 
    required this.customId,
     required this.ephemeralKeySecret});
}