class StatusAppResponse {
  StatusAppResponse(
      {required this.message, required this.code, required this.success});
  final String message;
  final int code;
  final bool success;

  factory StatusAppResponse.fromJson(Map<String, dynamic> json) {
    return StatusAppResponse(
        message: json['status']['message'],
        code: json['status']['code'] as int,
        success: json['status']['success'] as bool);
  }
}
