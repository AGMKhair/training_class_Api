class AppResponse {
  dynamic code;
  dynamic msg;
  dynamic token;

  AppResponse({this.code, this.msg, this.token});

  AppResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    data['token'] = this.token;
    return data;
  }
}