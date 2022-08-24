---
to: Bin/www.ts
---
import * as dotenv from "dotenv";

dotenv.config();
import config from "@infrastructure/Config";
import logger from "@infrastructure/Logger/logger";
import httpServer from "@http/Bootstrap/app";

const {server, application} = config;

httpServer.listen(server.PORT, () => {
  logger.debug(`${application.APP_NAME} Listening on port ${server.PORT} `);
});