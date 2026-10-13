// Prime numbers from 1 to 100
for (let number = 2; number <= 100; number++) {
  for (let divisor = 2; divisor <= Math.sqrt(number); divisor++) {
    if (number % divisor == 0) {
      process.stdout.write(number.toString() + " ")
      break;
    }
  }
}
