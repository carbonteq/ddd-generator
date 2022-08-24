---
to: App/Infrastructure/MySQLRepository/<%= name%>Repository.ts
---
import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient();
import <%- name -%>Entity from "@domain/<%- name -%>/<%- name -%>Entity";
import PaginatedData from "@domain/Utils/PaginatedData";
import {I<%- name -%>Repository} from "@domain/<%- name -%>/I<%- name -%>Repository";
import {injectable} from "tsyringe";

const <%- name -%> = prisma.<%- name.toLowerCase() -%>;

@injectable()
class <%- name -%>Repository implements I<%- name -%>Repository {

  async add<%- name%>(<%- name.toLowerCase()%>: <%- name%>Entity): Promise<void> {
    await <%- name%>.create({
      data: <%- name.toLowerCase()%>
    });
  }

  async fetchAll<%- pluralizeName%>(paginationOptions): Promise<PaginatedData<<%- name%>Entity>> {
    const count = await <%- name%>.count();
    const <%- name.toLowerCase()%>Objs = await <%- name%>.findMany({
      skip: paginationOptions.offset(),
      take: paginationOptions.limit(),
    })
    const paginatedData: PaginatedData<<%- name%>Entity> = new PaginatedData<<%- name%>Entity>(paginationOptions, count)
    <%- name.toLowerCase()%>Objs.forEach(<%- name.toLowerCase()%>Obj => {
      const <%- name.toLowerCase()%> = <%- name%>Entity.create(<%- name.toLowerCase()%>Obj);
      paginatedData.addItem(<%- name.toLowerCase()%>)
    });
    return paginatedData;
  }

  async fetchById(<%- name.toLowerCase() -%>Id: string): Promise<any> {
    const <%- name.toLowerCase() -%>Obj = await <%- name -%>.findUnique({
      where: {
        <%- name.toLowerCase() -%>Id: <%- name.toLowerCase() -%>Id,
      },
    })
    if (!<%- name.toLowerCase() -%>Obj) {
      throw new Error("Invalid <%- name -%> details");
    }
    return <%- name -%>Entity.create(<%- name.toLowerCase() -%>Obj);
  }

  async update(<%- name.toLowerCase() -%>: <%- name -%>Entity): Promise<void> {
    await <%- name -%>.update({
      where: {
        <%- name.toLowerCase() -%>Id: <%- name.toLowerCase() -%>.<%- name.toLowerCase() -%>Id,
      },
      data: <%- name.toLowerCase() -%>
    })
  }

  async remove(<%- name.toLowerCase() -%>Id: string): Promise<void> {
    await <%- name -%>.delete({
      where: {
        <%- name.toLowerCase() -%>Id: <%- name.toLowerCase() -%>Id,
      },
    })
  }

}

export default <%- name -%>Repository;

