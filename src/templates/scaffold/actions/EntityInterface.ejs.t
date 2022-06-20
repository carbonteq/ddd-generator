---
to: App/Domain/<%- name%>/I<%= name%>Repository.ts
---
import <%- name%>Entity from "./<%- name%>Entity";
import PaginationData from "../../../Infrastructure/Utils/PaginationData";
import PaginationOptions from "../../../Infrastructure/Utils/PaginationOptions";

export interface I<%- name%>Repository {
  add<%- name%>(<%- name.toLowerCase()%>: <%- name%>Entity): Promise<void>;

  fetchById(<%- name.toLowerCase()%>Id: string): Promise<<%- name%>Entity>;

  fetchAll<%- pluralizeName%>(options: PaginationOptions): Promise<PaginationData<<%- name%>Entity>>;

  update(<%- name.toLowerCase()%>: <%- name%>Entity): Promise<void>;

  remove(<%- name.toLowerCase()%>Id: string): Promise<void>;
}