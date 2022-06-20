---
to: HTTP/Routes/Api/V1/<%= name%>/<%= name%>.ts
---
import * as express from "express";
import <%- name -%>Controller from "../../../../Controllers/Api/V1/<%- name -%>/<%- name -%>";
import container from "../../../../../App/Infrastructure/IocContainer/container";

const <%- name.toLowerCase() -%>Controller = container.resolve(<%- name -%>Controller);
const router = express.Router({mergeParams: true});

router.post("/<%- name.toLowerCase() -%>", <%- name.toLowerCase() -%>Controller.create<%- name -%>);
router.get(`/<%- name.toLowerCase() -%>/all`, <%- name.toLowerCase() -%>Controller.fetchAll<%- pluralizeName -%>);
router.put("/<%- name.toLowerCase() -%>/:<%- name.toLowerCase() -%>Id", <%- name.toLowerCase() -%>Controller.update<%- name -%>);
router.get("/<%- name.toLowerCase() -%>/:<%- name.toLowerCase() -%>Id", <%- name.toLowerCase() -%>Controller.fetch<%- name -%>ById);
router.delete("/<%- name.toLowerCase() -%>/:<%- name.toLowerCase() -%>Id", <%- name.toLowerCase() -%>Controller.remove<%- name -%>);

export default router;