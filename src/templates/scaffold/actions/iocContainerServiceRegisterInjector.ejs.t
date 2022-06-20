---
to: App/Infrastructure/IocContainer/container.ts
inject: true
after: s-binding
skip_if: <%- `'${name}Service', ${name}Service` %>
---
<%- `container.registerSingleton<${name}Service>('${name}Service', ${name}Service);` %>