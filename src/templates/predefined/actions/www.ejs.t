---
to: Bin/www.ts
---
import * as dotenv from "dotenv";

dotenv.config();
import config from "../App/Infrastructure/Config";
import logger from "../App/Infrastructure/Logger/logger";
import httpServer from "../HTTP/Bootstrap/app";

const {server, application} = config;

httpServer.listen(server.PORT, () => {
  logger.debug(`${application.APP_NAME} Listening on port ${server.PORT} `);
});