---
to: App/Application/<%= name%>/<%= name%>Service.ts
---
import {inject, injectable} from "tsyringe";
import {I<%- name -%>Repository} from "../../Domain/<%- name -%>/I<%- name -%>Repository";
import AppResult from "../Utils/AppResult";
import PaginatedData from "../../Domain/Utils/PaginatedData";
import Create<%- name -%>DTO from "./Create<%- name -%>DTO";
import FetchAll<%- pluralizeName -%>DTO from "./FetchAll<%- pluralizeName -%>DTO";
import Update<%- name -%>DTO from "./Update<%- name -%>DTO";
import Fetch<%- name -%>ByIdDTO from "./Fetch<%- name -%>ByIdDTO";
import Remove<%- name -%>DTO from "./Remove<%- name -%>DTO";
import <%- name -%>Entity from "../../Domain/<%- name -%>/<%- name -%>Entity";

@injectable()
class <%- name -%>Service {
  constructor(@inject("<%- name -%>Repository") private <%- name.toLowerCase() -%>Repository: I<%- name -%>Repository) {
  }

  async create<%- name -%>(create<%- name -%>DTO: Create<%- name -%>DTO): Promise<AppResult> {
    try {
      create<%- name -%>DTO.hasAccess();
      const <%- name.toLowerCase() -%>: <%- name -%>Entity = create<%- name -%>DTO.<%- name.toLowerCase() -%>;
      await this.<%- name.toLowerCase() -%>Repository.add<%- name -%>(<%- name.toLowerCase() -%>.toObject());
      return AppResult.success({message: "<%- name -%> created successfully"});
    } catch (err) {
      return AppResult.fail(err.message);
    }
  }

  async fetchAll<%- pluralizeName -%>(fetchAll<%- pluralizeName -%>DTO: FetchAll<%- pluralizeName -%>DTO): Promise<AppResult> {
    try {
      const {paginationOptions} = fetchAll<%- pluralizeName -%>DTO;
      fetchAll<%- pluralizeName -%>DTO.hasAccess();
      const response: PaginatedData<<%- name -%>Entity> = await this.<%- name.toLowerCase() -%>Repository.fetchAll<%- pluralizeName -%>(paginationOptions);
      return AppResult.success({data: response.getPaginatedData()});
    } catch (err) {
      return AppResult.fail(err.message);
    }
  }

  async update<%- name -%>(update<%- name -%>DTO: Update<%- name -%>DTO): Promise<AppResult> {
    try {
      update<%- name -%>DTO.hasAccess();
      const <%- name.toLowerCase() -%>: <%- name -%>Entity = update<%- name -%>DTO.<%- name.toLowerCase() -%>;
      await this.<%- name.toLowerCase() -%>Repository.update(<%- name.toLowerCase() -%>.toObject());
      return AppResult.success({message: "<%- name -%> updated successfully"});
    } catch (err) {
      return AppResult.fail(err.message);
    }
  }

  async fetch<%- name -%>ById(fetch<%- name -%>ByIdDTO: Fetch<%- name -%>ByIdDTO): Promise<AppResult> {
    try {
      const {<%- name.toLowerCase() -%>Id} = fetch<%- name -%>ByIdDTO;
      fetch<%- name -%>ByIdDTO.hasAccess();
      const response: <%- name -%>Entity = await this.<%- name.toLowerCase() -%>Repository.fetchById(<%- name.toLowerCase() -%>Id);
      return AppResult.success({data: response});
    } catch (err) {
      return AppResult.fail(err.message);
    }
  }

  async remove<%- name -%>(remove<%- name -%>DTO: Remove<%- name -%>DTO): Promise<AppResult> {
    try {
      remove<%- name -%>DTO.hasAccess();
      await this.<%- name.toLowerCase() -%>Repository.remove(remove<%- name -%>DTO.<%- name.toLowerCase() -%>Id);
      return AppResult.success({message: "<%- name -%> deleted Successfully"})
    } catch (err) {
      return AppResult.fail(err.message);
    }
  }
}

export default <%- name -%>Service


