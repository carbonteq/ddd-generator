---
to: App/Infrastructure/Config/application.ts
---
export default {
  APP_NAME: process.env.APP_NAME,
  NODE_ENV: process.env.NODE_ENV,
  SECRET: process.env.SECRET
};
