---
to: App/Application/<%= name%>/FetchAll<%= pluralizeName%>DTO.ts
---
import BaseDTO from "@application/Utils/BaseDTO";
import PaginationOptions from "@domain/Utils/PaginationOptions";

class FetchAll<%- pluralizeName -%>DTO extends BaseDTO {
  private readonly page: number = 1;
  private readonly perPage: number = 10;
  public paginationOptions: PaginationOptions

  constructor(request) {
    super(request);
    this.allowedRoles = []
    this.page = request.query.page;
    this.perPage = request.query.perPage;
    this.paginationOptions = new PaginationOptions(this.page, this.perPage)
  }
}

export default FetchAll<%- pluralizeName -%>DTO;