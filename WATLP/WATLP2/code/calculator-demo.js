// Program to demonstrate arithmetic operations.

const { log } = require("console");
const calculator = require("./calculator.js")

const a = 50;
const b = 20;

log(`# Calculation between ${a} and ${b}`)
log("Addition: ", calculator.add(a, b));
log("Subtraction: ", calculator.subtract(a, b));
log("Multiplication: ", calculator.multiply(a, b));
log("Division: ", calculator.divide(a, b));
