// Fibonacci series

const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("Program to print fibonacci series");

let count;
rl.question('Enter the count of numbers to print: ', (count) => {
  console.log(`Printing fibonacci series up to ${count}!`);
  rl.close();
});

let first = 0;
let second = 1;
let next = first + second;

for (let i = 0; i < count; i++) {
  process.stdout.write(next.toString() + " ");
  first = second;
  second = next;
  next = first + second;
}
