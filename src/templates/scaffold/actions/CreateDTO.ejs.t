---
to: App/Application/<%= name%>/Create<%= name%>DTO.ts
---
import BaseDTO from "@application/Utils/BaseDTO";
import <%- name -%>Entity from "@domain/<%- name -%>/<%- name -%>Entity";

class Create<%- name -%>DTO extends BaseDTO {
  public <%- name.toLowerCase() -%>Id: string;
  public <%- name.toLowerCase() -%>: <%- name -%>Entity;
  
  constructor(request) {
    super(request);
    this.allowedRoles = []
    const params = request.body;
    params.<%- name.toLowerCase() -%>Id = <%- name -%>Entity.generateId();
    this.<%- name.toLowerCase() -%> = <%- name -%>Entity.create(params);
  }

}

export default Create<%- name -%>DTO;