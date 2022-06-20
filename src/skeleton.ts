import * as fs from "fs";
import render from "hygen/dist/render";
import * as path from "path";
import execute from "hygen/dist/execute";
import Logger from "hygen/dist/logger";

const directories = ["Bin",
  "App",
  "App/Application",
  "App/Application/Utils",
  "App/Domain",
  "App/Infrastructure",
  "App/Infrastructure/Config",
  "App/Infrastructure/IocContainer",
  "App/Infrastructure/Logger",
  "App/Infrastructure/MySQLRepository",
  "App/Infrastructure/Utils",
  "HTTP",
  "HTTP/Bootstrap",
  "HTTP/Controllers",
  "HTTP/Controllers/Api",
  "HTTP/Controllers/Api/V1",
  "HTTP/Errors",
  "HTTP/Routes",
  "HTTP/Routes/Api",
  "HTTP/Routes/Api/V1",
  "HTTP/Routes/Api/V1"
]


export const generatePredefinedFiles = async () => {
  for (let directory of directories) {
    if (!fs.existsSync(directory)) {
      fs.mkdirSync(directory);
    }
  }
  const renderedFiles = await render({
    actionfolder: path.join(__dirname, 'templates', 'predefined', 'actions'),
  }, {});
  await execute(renderedFiles, {}, {
    logger: new Logger(console.log.bind(console)),
    createPrompter: () => require('enquirer'),
    cwd: process.cwd(),
  });
}





