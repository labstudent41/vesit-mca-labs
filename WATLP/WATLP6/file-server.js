const express = require('express');
const fs = require('fs');
const path = require('path');

const app = express();
const port = 3000;

// Home Page
app.get('/', (_, res) => {
  res.sendFile(path.join(__dirname, 'assets', 'index.html'));
});

// Serve HTML files
app.get('/html', (_, res) => {
  res.sendFile(path.join(__dirname, 'assets', 'students.html'));
});

// Serve CSV files
app.get('/csv', (_, res) => {
  res.sendFile(path.join(__dirname, 'assets', 'students.csv'))
});

// Serve JSON files
app.get('/json', (_, res) => {
  res.sendFile(path.join(__dirname, 'assets', 'students.json'))
});

// Serve PDF files
app.get('/pdf', (_, res) => {
  res.sendFile(path.join(__dirname, 'assets', 'students.pdf'));
})

app.listen(port, () => {
  console.log(`Server is running on https://localhost:${port}`)
});
