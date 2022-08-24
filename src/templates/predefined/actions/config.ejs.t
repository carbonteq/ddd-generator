---
to: App/Infrastructure/Config/index.ts
---
import database from '@infrastructure/Config/database';
import server from '@infrastructure/Config/server';
import application from '@infrastructure/Config/application';

export default {
  database,
  server,
  application
};