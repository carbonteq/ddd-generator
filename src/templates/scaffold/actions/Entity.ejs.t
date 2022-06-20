---
to: App/Domain/<%- name%>/<%= name%>Entity.ts
---
<% let constructorParams = ""-%>
<% let methodParams = "" -%>

import BaseEntity from "../BaseEntity";
class <%- name%>Entity extends BaseEntity {
<%for(let i=0;i<parameters.length;i++){-%>
 <% if(parameters[i].includes(':')) { -%>
  <%- `public ${parameters[i].split(':')[0]}: ${parameters[i].split(':')[1]};` -%>
  <% constructorParams = constructorParams.concat(`${parameters[i].split(':')[0]}: ${parameters[i].split(':')[1]}`) -%>
  <% methodParams = methodParams.concat(`obj.${parameters[i].split(':')[0]}`) -%>
  <% if (i!==parameters.length-1) { -%>
   <% constructorParams=constructorParams.concat(', ') -%>
   <% methodParams=methodParams.concat(', ') -%>
  <% } -%> 
 <% } -%>
<%}-%>

   constructor(<%- constructorParams -%>) {
     super();   
 <%for(let i=0;i<parameters.length;i++){-%>
    <%- `this.${parameters[i].split(':')[0]} = ${parameters[i].split(':')[0]};` -%>   
 <% } -%>
  }
   
   static create(obj): <%- name%>Entity {
     const <%- name.toLowerCase() -%>  = new <%- name%>Entity(<%- methodParams -%>);
     if (obj.createdAt && obj.updatedAt) {
       <%- name.toLowerCase() -%>.setDates(obj.createdAt, obj.updatedAt);
     }
     return <%- name.toLowerCase() -%>; 
   }

}
export default <%- name%>Entity;