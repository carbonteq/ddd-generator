---
to: App/Infrastructure/Logger/logger.ts
---
import pino from "pino";
import {IAppLogger} from "@application/IAppLogger";

const pinoLogger = pino();

class AppLogger implements IAppLogger {
  error(message: string): void {
    pinoLogger.error(message);
  }

  warn(message: string): void {
    pinoLogger.warn(message);
  }

  debug(message: string): void {
    pinoLogger.info(message);
  }

  info(message: string): void {
    pinoLogger.info(message);
  }
}

export default new AppLogger();


