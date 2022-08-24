---
to: App/Domain/BaseEntity.ts
---
import {v4 as uuidV4} from "uuid";
import EntityInterface from "@domain/EntityInterface";

class BaseEntity implements EntityInterface {
  public createdAt: Date;
  public updatedAt: Date;

  constructor() {
    this.createdAt = null;
    this.updatedAt = null;
  }

  toObject(): any {
    const jsonObj = JSON.parse(JSON.stringify(this));
    delete jsonObj.createdAt;
    delete jsonObj.updatedAt;
    return jsonObj;
  }

  setDates(createdAt, updatedAt): void {
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }

  static generateId(): string {
    return uuidV4();
  }

}


export default BaseEntity