---
to: HTTP/Bootstrap/app.ts
inject: true
after: component
skip_if: <%- name %>
---
<%- `import ${name} from "@routes/Api/V1/${name}/${name}";` %>