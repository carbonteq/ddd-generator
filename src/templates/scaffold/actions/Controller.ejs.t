---
to: HTTP/Controllers/Api/V1/<%= name%>/<%= name%>.ts
---
import {injectable,inject} from "tsyringe";
import container from "../../../../../App/Infrastructure/IocContainer/container";
import <%- name -%>Service from "../../../../../App/Application/<%- name -%>/<%- name -%>Service";
import Create<%- name -%>DTO from "../../../../../App/Application/<%- name -%>/Create<%- name -%>DTO";
import FetchAll<%- pluralizeName -%>DTO from "../../../../../App/Application/<%- name -%>/FetchAll<%- pluralizeName -%>DTO";
import Update<%- name -%>DTO from "../../../../../App/Application/<%- name -%>/Update<%- name -%>DTO";
import Fetch<%- name -%>ByIdDTO from "../../../../../App/Application/<%- name -%>/Fetch<%- name -%>ByIdDTO";
import Remove<%- name -%>DTO from "../../../../../App/Application/<%- name -%>/Remove<%- name -%>DTO";
import AppResultAdaptor from "../../../../../App/Infrastructure/Utils/AppResultAdaptor";

container.resolve(<%- name -%>Service);

@injectable()
class <%- name -%>Controller {

  constructor(@inject("<%- name -%>Service") private <%- name.toLowerCase() -%>Service: <%- name -%>Service) {
  }

  create<%- name -%> = async (request, response) => {
    const input = new Create<%- name -%>DTO(request);
    const appResult = await this.<%- name.toLowerCase() -%>Service.create<%- name -%>(input);
    AppResultAdaptor.createHTTPResponse(appResult, response);
  }

  fetchAll<%- pluralizeName -%> = async (request, response) => {
    const input = new FetchAll<%- pluralizeName -%>DTO(request);
    const appResult = await this.<%- name.toLowerCase() -%>Service.fetchAll<%- pluralizeName -%>(input);
    AppResultAdaptor.createHTTPResponse(appResult, response);
  }

  update<%- name -%> = async (request, response) => {
    const input = new Update<%- name -%>DTO(request);
    const appResult = await this.<%- name.toLowerCase() -%>Service.update<%- name -%>(input);
    AppResultAdaptor.createHTTPResponse(appResult, response);
  }

  fetch<%- name -%>ById = async (request, response) => {
    const input = new Fetch<%- name -%>ByIdDTO(request);
    const appResult = await this.<%- name.toLowerCase() -%>Service.fetch<%- name -%>ById(input);
    AppResultAdaptor.createHTTPResponse(appResult, response);
  }

  remove<%- name -%> = async (request, response) => {
    const input = new Remove<%- name -%>DTO(request);
    const appResult = await this.<%- name.toLowerCase() -%>Service.remove<%- name -%>(input);
    AppResultAdaptor.createHTTPResponse(appResult, response);
  }

}

export default <%- name -%>Controller