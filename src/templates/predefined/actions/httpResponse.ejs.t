---
to: App/Application/Utils/HttpResp.ts
---
class HttpResp {
  public statusCode: number;
  public body: any;

  constructor(statusCode, body) {
    this.statusCode = statusCode;
    this.body = body;
  }

  static create(respCode, body): HttpResp {
    return new HttpResp(respCode, body);
  }

  static convertToExpress(resp, httpResp): object {
    return resp.status(httpResp.statusCode).json(httpResp.body);
  }

}

export default HttpResp;