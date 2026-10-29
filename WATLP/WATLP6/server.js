const http = require('http');
const fs = require('fs');
const path = require('path');

const server = http.createServer((req, res) => {
  let filePath = '';

  switch (req.url) {
    case '/':
    case '/home':
      filePath = path.join(__dirname, 'public', 'home.html');
      break;
    case '/about':
      filePath = path.join(__dirname, 'public', 'about.html');
      break;
    case '/contact':
      filePath = path.join(__dirname, 'public', 'contact.html')
      break;
    default:
      res.writeHead(404, { 'Content-Type': 'text/html' });
      res.end('<h1>404 - Page Not Found</h1>');
      return;
  }

  fs.readFile(filePath, (err, content) => {
    if (err) {
      res.writeHead(500, { 'Content-Type': 'text/plain' });
      res.end('Server Error');
    } else {
      res.writeHead(200, { 'Content-Type': 'text/html' });
      res.end(content);
    }
  })
});

server.listen(3000, () => {
  console.log('Server running at http://localhost:3000');
})
