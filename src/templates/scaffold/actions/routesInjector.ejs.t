---
to: HTTP/Bootstrap/app.ts
inject: true
after: routes
skip_if: <%- `'/api/v1', ${name}` %>
---
<%- `app.use('/api/v1', ${name});` %>