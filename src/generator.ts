const {getDMMF} = require('@prisma/sdk');
const {getSchemaPathAndPrint} = require('@prisma/migrate');
import render from "hygen/dist/render"
import execute from "hygen/dist/execute"
import Logger from 'hygen/dist/logger'
import * as path from "path";
import * as pluralize from 'pluralize';

const {Select} = require('enquirer');
import {generatePredefinedFiles} from "./skeleton";


const fs = require('fs').promises;

const castDataType = {
  "Int": "number",
  "String": "string",
  "Bool": "Boolean",
  "DateTime": "Date"
}


const generateFiles = async (parameters: string[], name: string) => {
  const pluralizeName = pluralize(name);
  const renderedFiles = await render({
    actionfolder: path.join(__dirname, 'templates', 'scaffold', 'actions'),
    parameters: parameters,
    name: name,
    pluralizeName: pluralizeName
  }, {});
  await execute(renderedFiles, {}, {
    logger: new Logger(console.log.bind(console)),
    createPrompter: () => require('enquirer'),
    cwd: process.cwd(),
  });
}


const runGenerator = async (modelNames) => {
  console.log("***************", modelNames);
  const modelsToGenerate = modelNames.split(' ');

  const schemaPath = await getSchemaPathAndPrint("prisma/schema.prisma");
  const schema = await fs.readFile(schemaPath, 'utf-8');
  const localDMMF = await getDMMF({datamodel: schema});
  const names = []
  const filteredModels = localDMMF.datamodel.models.filter((m) => modelsToGenerate.includes(m.name));

  for (let model of filteredModels) {
    let parameters = []
    const fields = model.fields;

    for (let field of fields) {
      if (Object.keys(castDataType).includes(field.type)) {
        // @ts-ignore
        const type = castDataType[field.type];
        parameters.push(`${field.name}:${type}`);
      }
    }
    names.push(model.name);
    await generateFiles(parameters, model.name);
  }
}

const runSkeleton = () => {
  generatePredefinedFiles();
}

const runComponent = () => {
  const {prompt} = require('enquirer');
  const question = {
    type: 'input',
    name: 'models',
    message: 'Please enter model names'
  };

  prompt(question)
    .then(answer => runGenerator(answer.models))
    .catch(console.error);
}

const prompt = new Select({
  name: 'command',
  message: 'Select your command',
  choices: ['skeleton', 'component']
});

prompt.run()
  .then(answer => {
    if (answer === "skeleton") {
      runSkeleton();
    } else {
      runComponent();
    }
  })
  .catch(console.error);
