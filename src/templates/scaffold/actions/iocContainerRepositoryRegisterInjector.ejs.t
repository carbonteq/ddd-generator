---
to: App/Infrastructure/IocContainer/container.ts
inject: true
after: i-binding
skip_if: <%- `'${name}Repository', ${name}Repository` %>
---
<%- `container.registerSingleton<I${name}Repository>('${name}Repository', ${name}Repository);` %>