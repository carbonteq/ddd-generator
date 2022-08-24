---
to: App/Infrastructure/Utils/AppResultAdaptor.ts
---
import AppResult from "@application/Utils/AppResult";
import HttpResp from "@application/Utils/HttpResp";

class AppResultAdaptor {
  public appResult: AppResult;

  protected constructor(appResult: AppResult) {
    this.appResult = appResult;
  }

  static createHTTPResponse(appResult: AppResult, response): any {
    return HttpResp.convertToExpress(response, HttpResp.create(appResult.status, appResult.data()));
  }

}

export default AppResultAdaptor;