---
to: App/Infrastructure/IocContainer/container.ts
inject: true
after: utilizer
skip_if: <%- `import ${name}Service from "../../Application/${name}/${name}Service";` %>
---
<%- `import ${name}Service from "../../Application/${name}/${name}Service";` %>