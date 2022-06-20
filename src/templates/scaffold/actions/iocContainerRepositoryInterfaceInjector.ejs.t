---
to: App/Infrastructure/IocContainer/container.ts
inject: true
after: interface
skip_if: <%- `import {I${name}Repository} from "../../Domain/${name}/I${name}Repository";` %>
---
<%- `import {I${name}Repository} from "../../Domain/${name}/I${name}Repository";` %>