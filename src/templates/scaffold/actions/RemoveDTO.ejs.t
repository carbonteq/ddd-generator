---
to: App/Application/<%= name%>/Remove<%= name%>DTO.ts
---
import BaseDTO from "@application/Utils/BaseDTO";

class Remove<%- name -%>DTO extends BaseDTO {
  public <%- name.toLowerCase() -%>Id: string;

  constructor(request) {
    super(request);
    this.allowedRoles = [];
    this.<%- name.toLowerCase() -%>Id = request.params.<%- name.toLowerCase() -%>Id;
  }
}

export default Remove<%- name -%>DTO;