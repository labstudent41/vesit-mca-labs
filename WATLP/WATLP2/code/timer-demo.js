// Program to demonstrate timer functions.

let count = 0;

const intervalId = setInterval(() => {
  console.log("Hello");
  count++;
}, 500);

setTimeout(() => {
  clearInterval(intervalId);
  console.log("Printing completed. Bye!");
}, 5500);
