class CommonResponseData extends Object {
  final int status;
  final String errMsg;
  final Map<String, dynamic> data;

  CommonResponseData({this.status, this.errMsg, this.data});

  CommonResponseData.fromJSON(json):
    status = json['status'],
    errMsg = json['msg'],
    data = json['data'];
}