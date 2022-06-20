---
to: HTTP/Bootstrap/app.ts
inject: true
after: component
skip_if: <%- name %>
---
<%- `import ${name} from "../Routes/Api/V1/${name}/${name}";` %>