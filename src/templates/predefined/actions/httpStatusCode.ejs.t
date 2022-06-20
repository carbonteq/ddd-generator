---
to: App/Application/Utils/HttpStatusCode.ts
---
class HttpStatusCode {

  static get OK(): number {
    return 200;
  }

  static get ERROR(): number {
    return 400;
  }

  static get MethodNotAllowed(): number {
    return 406;
  }

  static get NOT_FOUND(): number {
    return 404;
  }

  static get Not_Authorized(): number {
    return 401;
  }
}

export default HttpStatusCode;