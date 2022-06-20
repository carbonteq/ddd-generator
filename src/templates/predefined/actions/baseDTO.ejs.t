---
to: App/Application/Utils/BaseDTO.ts
---
import BaseDTOInterface from "./BaseDTOInterface";

class BaseDTO implements BaseDTOInterface {
  public allowedRoles = []

  constructor(request) {
  }

  hasAccess() {

  }

}

export default BaseDTO;