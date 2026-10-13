// Calculating circle area and perimeter

const { log } = require("console");
const circle = require("./circle.js");

const radius = 7;

log("# Measures of our Circle");
log("Radius: ", radius);
log("Area: ", circle.area(radius).toFixed(2));
log("Perimeter: ", circle.perimeter(radius).toFixed(2));
