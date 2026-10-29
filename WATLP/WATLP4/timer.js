function displayMessage() {
    const time = new Date().toLocaleTimeString();
    console.log(`Timer function executed at ${time}`);
}

console.log("Timer started. Press Ctrl+C to stop.");

const timeId = setInterval(displayMessage, 10_000);
