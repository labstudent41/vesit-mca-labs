const EventEmitter = require("events");

class ArrayEvents extends EventEmitter {
  sortArray(array) {
    const sortedArray = [...array].sort((a, b) => a - b);
    this.emit("sorted", sortedArray);
  }

  reverseArray(array) {
    const reversedArray = [...array].reverse();
    this.emit("reversed", reversedArray);
  }

  searchArray(array, element) {
    const index = array.indexOf(element);

    if (index !== -1) {
      this.emit("found", element, index);
    } else {
      this.emit("notFound", element);
    }
  }
}

const arrayEvents = new ArrayEvents();

// Register event listeners
arrayEvents.on("sorted", (result) => {
  console.log("Sorted array:", result);
});

arrayEvents.on("reversed", (result) => {
  console.log("Reversed array:", result);
});

arrayEvents.on("found", (element, index) => {
  console.log(`Element ${element} found at index ${index}.`);
});

arrayEvents.on("notFound", (element) => {
  console.log(`Element ${element} was not found in the array.`);
});

// Demonstrate a one-time event listener
arrayEvents.once("complete", () => {
  console.log("All array operations completed.");
});

// Demonstrate an event listener count
console.log(
  "Number of listeners for 'sorted':",
  arrayEvents.listenerCount("sorted")
);

const numbers = [8, 3, 10, 1, 6, 4];

// Trigger events by calling the methods
arrayEvents.sortArray(numbers);
arrayEvents.reverseArray(numbers);
arrayEvents.searchArray(numbers, 6);
arrayEvents.searchArray(numbers, 20);

// Trigger the completion event
arrayEvents.emit("complete");

// This will not execute because "complete" was registered with once()
arrayEvents.emit("complete");
