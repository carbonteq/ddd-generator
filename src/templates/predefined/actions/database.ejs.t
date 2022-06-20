---
to: App/Infrastructure/Config/database.ts
---
export default {
  mysql: {
    DB: process.env.DB_NAME,
    TEST_DB: process.env.TEST_DB_NAME,
    USERNAME: process.env.DB_USERNAME,
    PASSWORD: process.env.DB_PASSWORD,
    HOST: process.env.DB_HOST,
    DIALECT: process.env.DB_DIALECT,
  },
};
