const inquirer = require("inquirer");
const cTable = require("console.table");
const conn = require("./db/connection");
const { exit } = require("process");

let currentRoles = [];
let currentEmployees = [];
