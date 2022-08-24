---
to: App/Infrastructure/IocContainer/container.ts
inject: true
after: component
skip_if: <%- `import ${name}Repository from "@infratructure/MySQLRepository/${name}Repository";` %>
---
<%- `import ${name}Repository from "@infrastructure/MySQLRepository/${name}Repository";` %>