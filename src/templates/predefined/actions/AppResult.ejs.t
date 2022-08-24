---
to: App/Application/Utils/AppResult.ts
---
import HttpStatusCode from "@application/Utils/HttpStatusCode";

class AppResult {
  readonly status: HttpStatusCode;
  private readonly _data;

  protected constructor(status: HttpStatusCode, data) {
    this.status = status;
    this._data = data;
  }

  public data() {
    return this._data;
  }

  static success(data): AppResult {
    return new AppResult(HttpStatusCode.OK, data);
  }

  static fail(data): AppResult {
    return new AppResult(HttpStatusCode.ERROR, data);
  }

}

export default AppResult;