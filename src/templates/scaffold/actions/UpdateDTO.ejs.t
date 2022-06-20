---
to: App/Application/<%= name%>/Update<%= name%>DTO.ts
---
import BaseDTO from "../Utils/BaseDTO";
import <%- name -%>Entity from "../../Domain/<%- name -%>/<%- name -%>Entity";

class Update<%- name -%>DTO extends BaseDTO {
  public <%- name.toLowerCase() -%>: <%- name -%>Entity;

  constructor(request) {
    super(request);
    this.allowedRoles = []
    const params = request.body;
    params.<%- name.toLowerCase() -%>Id = request.params.<%- name.toLowerCase() -%>Id
    this.<%- name.toLowerCase() -%> = <%- name -%>Entity.create(params)
  }
}

export default Update<%- name -%>DTO;