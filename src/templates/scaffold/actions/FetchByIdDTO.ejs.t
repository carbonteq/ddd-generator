---
to: App/Application/<%= name%>/Fetch<%= name%>ByIdDTO.ts
---
import BaseDTO from "../Utils/BaseDTO";

class Fetch<%- name -%>ByIdDTO extends BaseDTO {
  public <%- name.toLowerCase() -%>Id: string;

  constructor(request) {
    super(request);
    this.allowedRoles = []
    this.<%- name.toLowerCase() -%>Id = request.params.<%- name.toLowerCase() -%>Id
  }
}

export default Fetch<%- name -%>ByIdDTO;